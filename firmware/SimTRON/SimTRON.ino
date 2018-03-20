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

// Channels control
struct ChannelStatusData {
  byte channel;
  bool isEnabled;
  char icc[21];
};
byte channelEnablePin[] { 2, 3, 4, 5, 6, 7, 8, 9};
ChannelStatusData channelsStatus[8];
byte selectedChannel = 0;
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
      strcpy(channelsStatus[selectedChannel].icc, token);
      return true;
    }
    token = strtok (NULL, "\r\n");
  }
  channelsStatus[selectedChannel].icc[0] = NULL;
  return false;
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
  Serial.print(F("\", \"status\": \""));
  if (statusData->isEnabled) {
    Serial.print(strlen(statusData->icc) > 0 ? "Channel enabled, SIM present" : "Channel enabled, SIM not present");
  } else {
    Serial.print("Channel disabled");
  }
  Serial.println(F("\"}"));
}

void printBootingUpMessage() {
  Serial.println(F("{\"type\": \"booting\", \"body\": \"Booting Up ...\"}"));
}

void printBootCompleteMessage() {
  Serial.println(F("{\"type\": \"booting\", \"body\": \"System ready...\"}"));
}

