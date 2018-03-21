#include <SoftwareSerial.h>
#include <Input.h>
#include <string.h>

#define RX 10
#define TX 11

#define CHANNEL_COUNT 8
#define CHANNEL_S0 A1
#define CHANNEL_S1 A2
#define CHANNEL_S2 A3
#define SWITCH_CHANNEL_DELAY 50

#define MODEM_RESPONSE_MAX_CHARS 750
#define MAX_READ_RETRIES 25
#define NO_DATA_ON_READ_DELAY 10

#define FIRST_SMS_INDEX 1
#define SMS_PARSER_STATE_HEAD 1
#define SMS_PARSER_STATE_BODY 2
#define SMS_HEAD_SENDER 2
#define SMS_HEAD_DATE 3
#define SMS_HEAD_TIME 4

enum NetworkRegistrationStatus {
  NOT_REGISTERED = 0,
  REGISTERED_HOME = 1,
  SEARCHING = 2,
  REGISTRATION_DENIED = 3,
  UNKNOWN = 4,
  REGISTERED_ROAMING = 5,
  REGISTERED_HOME_SMS_ONLY = 6,
  REGISTERED_ROAMING_SMS_ONLY = 7,
  REGISTERED_FOR_EMERGENCY_ONLY = 8,
  REGISTERED_HOME_FOR_CSFB = 9,
  REGISTERED_ROAMING_FOR_CSFB = 10
};

struct ChannelStatusData {
  byte channel;
  bool isEnabled;
  char icc[21];
  NetworkRegistrationStatus registrationStatus;
};

// Channels control
byte channelEnablePin[] { 2, 3, 4, 5, 6, 7, 8, 9};
ChannelStatusData channelsStatus[8];
byte selectedChannel = 0;

// Modules read
int simDataIndex = 0;
char simData[MODEM_RESPONSE_MAX_CHARS];

// SMS Parser
struct SmsData {
  byte channel;
  char sender[16];
  char date[16];
  char time[16];
  char* body;
};
byte smsParserState;
byte headElementsPart;

SoftwareSerial sim(RX, TX);
Input input;

void enableCommand(CommandParam** params, Stream* response) {
  byte channel = params[0]->asInt();
  if (channel >= 0 && channel < CHANNEL_COUNT) {
    ChannelStatusData* status = enableChannel(channel);
    printChannelStatusJson(status);
  }
}

void disableCommand(CommandParam** params, Stream* response) {
  byte channel = params[0]->asInt();
  if (channel >= 0 && channel < CHANNEL_COUNT) {
    ChannelStatusData* status = disableChannel(channel);
    printChannelStatusJson(status);
  }
}

void statusCommand(CommandParam** params, Stream* response) {
  byte channel = params[0]->asInt();
  if (channel >= 0 && channel < CHANNEL_COUNT) {
    printChannelStatusJson(&channelsStatus[channel]);
  }
}

InputCommand* commandDefinitions[] = defineCommands(
  command("enable", 1, &enableCommand),
  command("disable", 1, &disableCommand),
  command("status", 1, &statusCommand)
);

void setup() {
  input.begin(9600, commandDefinitions);

  printBootingUpMessage();

  pinMode(CHANNEL_S0, OUTPUT);
  pinMode(CHANNEL_S1, OUTPUT);
  pinMode(CHANNEL_S2, OUTPUT);

  for (byte i = 0; i < CHANNEL_COUNT; i++) {
    channelsStatus[i].channel = i;
    channelsStatus[i].isEnabled = false;
    channelsStatus[i].icc[0] = NULL;
    channelsStatus[i].registrationStatus = NOT_REGISTERED;
  }
  for (byte i = 0; i < CHANNEL_COUNT; i++) {
    pinMode(channelEnablePin[i], OUTPUT);
    disableChannel(i);
  }
  for (byte i = 0; i < CHANNEL_COUNT; i++) {
    enableChannel(i);
    delay(1000);
  }
  selectChannel(0);

  sim.begin(9600);

  printBootCompleteMessage();
}

void loop() {
  if (channelsStatus[selectedChannel].isEnabled && readIcc()) {
    readNetworkStatus();
    if (readSmsAtIndex(FIRST_SMS_INDEX)) {
      deleteSmsAtIndex(FIRST_SMS_INDEX);
    }
  }
  
  selectNextChannel();
}

ChannelStatusData* enableChannel(byte channel) {
  if (!channelsStatus[channel].isEnabled) {
    digitalWrite(channelEnablePin[channel], HIGH);
    channelsStatus[channel].isEnabled = true;
    return &channelsStatus[channel];
  } else {
    return NULL;
  }
}

ChannelStatusData* disableChannel(byte channel) {
  if (channelsStatus[channel].isEnabled) {
    digitalWrite(channelEnablePin[channel], LOW);
    channelsStatus[channel].isEnabled = false;
    return &channelsStatus[channel];
  } else {
    return NULL;
  }
}

bool readIcc() {
  sim.print(F("AT+CCID\r"));
  bool simPresent = readModemResponse(simData);
  if (simPresent) {
    return parseIcc(simData);
  } else {
    return false;
  }
}

bool parseIcc(char* iccResponseData) {
  char* token = strtok (iccResponseData, "\r\n");
  while (token != NULL) {
    if (strlen(token) >= 15) {
      if (strcmp(token, channelsStatus[selectedChannel].icc) != 0) {
        strcpy(channelsStatus[selectedChannel].icc, token);
        printChannelStatusJson(&channelsStatus[selectedChannel]);
      }
      return true;
    }
    token = strtok (NULL, "\r\n");
  }
  channelsStatus[selectedChannel].icc[0] = NULL;
  return false;
}

void readNetworkStatus() {
  sim.print(F("AT+CREG?\r"));
  bool statusReadCorrectly = readModemResponse(simData);
  if (statusReadCorrectly) {
    NetworkRegistrationStatus status = parseNetworkStatus(simData);
    if (status != channelsStatus[selectedChannel].registrationStatus) {
      channelsStatus[selectedChannel].registrationStatus = status;
      printChannelStatusJson(&channelsStatus[selectedChannel]);
    }
  } else {
    return UNKNOWN;
  }
}

NetworkRegistrationStatus parseNetworkStatus(char* networkStatusResponseData) {
  char* token = strtok (networkStatusResponseData, "\r\n");
  while (token != NULL) {
    if (strstr(token, "+CREG:") == token) {
      int networkStatus = token[9] - '0';
      if (networkStatus == 1 && token[10] == '0') {
        networkStatus = 10;
      }
      return networkStatus;
    }
    token = strtok (NULL, "\r\n");
  }
  return UNKNOWN;
}

bool readSmsAtIndex(int index) {
  sim.print(F("AT+CMGF=1\r"));
  bool modemInSmsMode = readModemResponse(simData);
  if (modemInSmsMode) {
    sim.print(F("AT+CMGR="));
    sim.print(index);
    sim.print("\r");
    bool readCommandSuccess = readModemResponse(simData);
    if(readCommandSuccess && strstr(simData, "\r\n+CMGR:") != NULL) {
      SmsData smsData;
      parseSms(simData, &smsData);
      printSmsJson(&smsData);
      return true;
    } else {
      return false;
    }
  }
}

void parseSms(char* smsText, SmsData* smsData) {
  smsData->channel = selectedChannel;
  headElementsPart = 0;
  smsParserState = SMS_PARSER_STATE_HEAD;
  char* token = strtok (smsText, "\",\r\n");
  while (token != NULL) {
    if (strlen(token) > 0) {
      if (smsParserState == SMS_PARSER_STATE_HEAD) {
        token = strtok (NULL, "\",\r\n");
        fillSmsHeadPart(headElementsPart, token, smsData);
        headElementsPart++;
        if (headElementsPart == 5) {
          smsParserState = SMS_PARSER_STATE_BODY;
        }
      } else {
        token = strtok (NULL, "\r\n");
        smsData->body = token;
        return;
      }
    }
  }
}

void fillSmsHeadPart(int headPartId, char* headPart, SmsData* smsData) {
  switch(headPartId) {
    case SMS_HEAD_SENDER:
      strcpy(smsData->sender, headPart);
      break;
    case SMS_HEAD_DATE:
      strcpy(smsData->date, headPart);
      break;
    case SMS_HEAD_TIME:
      strcpy(smsData->time, headPart);
      break;
  }
}

void deleteSmsAtIndex(int index) {
  sim.print(F("AT+CMGD="));
  sim.print(index);
  sim.print('\r');
  bool messageDeleted = readModemResponse(simData);
  return messageDeleted;
}

bool readModemResponse(char* response) {
  int bytesReceived = 0;
  bool successCodeRead = false;

  bytesReceived = readUntilResultCode(response);
  if (strlen(simData) > 0) {
    successCodeRead = strstr(simData, "\r\nOK") != NULL;
  }

  return successCodeRead;
}

int readUntilResultCode(char* response) {
  byte retries = 0;
  simDataIndex = 0;
  while((simDataIndex < MODEM_RESPONSE_MAX_CHARS - 1) && (sim.available() > 0 || retries < MAX_READ_RETRIES)) {
    if (sim.available()) {
      response[simDataIndex++] = sim.read();
    } else {
      delay(NO_DATA_ON_READ_DELAY);
      retries++;
    }
  }
  response[simDataIndex] = NULL;
  return simDataIndex;
}

void selectNextChannel() {
  int channel = ++selectedChannel;
  if (channel >= CHANNEL_COUNT) {
    channel = 0;
  }
  selectChannel(channel);
}

void selectChannel(int channel) {
  digitalWrite(CHANNEL_S0, bitRead(channel,0));
  digitalWrite(CHANNEL_S1, bitRead(channel,1));
  digitalWrite(CHANNEL_S2, bitRead(channel,2));

  selectedChannel = channel;

  delay(SWITCH_CHANNEL_DELAY);
}

void printSmsJson(SmsData* smsData) {
  Serial.print(F("{\"type\": \"sms\""));
  Serial.print(F(", \"channel\": "));
  Serial.print(smsData->channel);
  Serial.print(F(", \"icc\": \""));
  Serial.print(channelsStatus[selectedChannel].icc);
  Serial.print(F("\", \"sender\": \""));
  Serial.print(smsData->sender);
  Serial.print(F("\", \"datetime\": \""));
  Serial.print(smsData->date);
  Serial.print(F(","));
  Serial.print(smsData->time);
  Serial.print(F("\", \"body\": \""));
  Serial.print(smsData->body);
  Serial.println(F("\"}"));
}


void printChannelStatusJson(ChannelStatusData* statusData) {
  Serial.print(F("{\"type\": \"status\""));
  Serial.print(F(", \"channel\": "));
  Serial.print(statusData->channel);
  Serial.print(F(", \"isEnabled\": "));
  Serial.print(statusData->isEnabled);
  Serial.print(F(", \"icc\": \""));
  Serial.print(statusData->icc);
  Serial.print(F("\", \"networkStatus\": "));
  Serial.print(statusData->registrationStatus);
  Serial.print(F(", \"status\": \""));
  if (statusData->isEnabled) {
    if (strlen(statusData->icc) > 0) {
      Serial.print(F("Channel enabled, SIM present, "));
      switch (statusData->registrationStatus) {
        case NOT_REGISTERED:
          Serial.print(F("Not registered"));
          break;
        case REGISTERED_HOME:
          Serial.print(F("Registered in home network"));
          break;
        case SEARCHING:
          Serial.print(F("Searching network"));
          break;
        case REGISTRATION_DENIED:
          Serial.print(F("Registration denied"));
          break;
        case UNKNOWN:
          Serial.print(F("Unknown registration status"));
          break;
        case REGISTERED_ROAMING:
          Serial.print(F("Registered in roaming"));
          break;
        case REGISTERED_HOME_SMS_ONLY:
          Serial.print(F("Registered in home network for SMS only"));
          break;
        case REGISTERED_ROAMING_SMS_ONLY:
          Serial.print(F("Registered in roaming for SMS only"));
          break;
        case REGISTERED_FOR_EMERGENCY_ONLY:
          Serial.print(F("Registered for emergency use only"));
          break;
        case REGISTERED_HOME_FOR_CSFB:
          Serial.print(F("Registered in home network for CSFB"));
          break;
        case REGISTERED_ROAMING_FOR_CSFB:
          Serial.print(F("Registered in roaming for CSFB"));
          break;
      };
    } else {
      Serial.print(F("Channel enabled, SIM not present"));
    }
  } else {
    Serial.print(F("Channel disabled"));
  }
  Serial.println(F("\"}"));
}

void printBootingUpMessage() {
  Serial.println(F("{\"type\": \"booting\", \"body\": \"Booting Up ...\"}"));
}

void printBootCompleteMessage() {
  Serial.println(F("{\"type\": \"booting\", \"body\": \"System ready...\"}"));
}

