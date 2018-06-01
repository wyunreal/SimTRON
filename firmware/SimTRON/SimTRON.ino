#include <SoftwareSerial.h>
#include <Input.h>
#include <string.h>
#include <avr/wdt.h>

#define VERSION "1.0.0"

#define RX 10
#define TX 11

#define CHANNEL_COUNT 8
#define CHANNEL_S0 A1
#define CHANNEL_S1 A2
#define CHANNEL_S2 A3
#define SWITCH_CHANNEL_DELAY 50
#define STATUS_POLL_INTERVAL 2

#define MODEM_RESPONSE_MAX_CHARS 650
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
  int channel;
  bool isEnabled;
  char msisdn[16];
  char icc[21];
  NetworkRegistrationStatus registrationStatus;
};

// Channels control
int channelEnablePin[] { 2, 3, 4, 5, 6, 7, 8, 9};
ChannelStatusData channelsStatus[8];
int selectedChannel = 0;

// Modules read
int simDataIndex = 0;
char simData[MODEM_RESPONSE_MAX_CHARS];

// SMS Parser
struct SmsData {
  int channel;
  char sender[16];
  char date[16];
  char time[16];
  char* body;
};
int smsParserState;
int headElementsPart;

SoftwareSerial sim(RX, TX);
Input input(50);

void resetCommand(CommandParams &params, Stream &response) {
  wdt_enable(WDTO_15MS);
  while(true);
}

void supportCommand(CommandParams &params, Stream &response) {
  printSupportMessage();
}

void enableCommand(CommandParams &params, Stream &response) {
  int channel = params.getParamAsInt(0);
  if (channel >= 0 && channel < CHANNEL_COUNT) {
    ChannelStatusData* status = enableChannel(channel);
    printChannelStatusJson(status);
  }
}

void disableCommand(CommandParams &params, Stream &response) {
  int channel = params.getParamAsInt(0);
  if (channel >= 0 && channel < CHANNEL_COUNT) {
    ChannelStatusData* status = disableChannel(channel);
    printChannelStatusJson(status);
  }
}

void statusCommand(CommandParams &params, Stream &response) {
  int channel = params.getParamAsInt(0);
  if (channel >= 0 && channel < CHANNEL_COUNT) {
    readStatus(channel);
    printChannelStatusJson(&channelsStatus[channel]);
  }
}

void catalogCommand(CommandParams &params, Stream &response) {
  int currentlySelectedChannel = selectedChannel;
  for (int i = 0; i < CHANNEL_COUNT; i++) {
    readStatus(i);
    printChannelStatusJson(&channelsStatus[i]);
    wdt_reset();
  }
  selectedChannel = currentlySelectedChannel;
}

void readStatus(int channel) {
  selectChannel(channel);
  if (readIcc(channel)) {
    readMsisdn(channel);
    readNetworkStatus(channel);
  }
}

void sendSmsCommand(CommandParams &params, Stream &response) {
  int channel = params.getParamAsInt(0);
  if (channel >= 0 && channel < CHANNEL_COUNT) {
    char* msisdn = params.getParamAsString(1);
    char* sms = params.getParamAsString(2);
    selectChannel(channel);
    sendSmsToMsisdn(msisdn, sms);
  }
}

const InputCommand commandDefinitions[] PROGMEM = defineCommands(
  command("reset", 0, &resetCommand),
  command("support", 0, &supportCommand),
  command("enable", 1, &enableCommand),
  command("disable", 1, &disableCommand),
  command("status", 1, &statusCommand),
  command("catalog", 0, &catalogCommand),
  command("sendSms", 3, &sendSmsCommand)
);

void setup() {
  wdt_disable();

  input.begin(9600, commandDefinitions);

  printBootingUpMessage();

  pinMode(CHANNEL_S0, OUTPUT);
  pinMode(CHANNEL_S1, OUTPUT);
  pinMode(CHANNEL_S2, OUTPUT);

  for (int i = 0; i < CHANNEL_COUNT; i++) {
    pinMode(channelEnablePin[i], OUTPUT);
    initChannel(i, false);
  }
  for (int i = 0; i < CHANNEL_COUNT; i++) {
    enableChannel(i);
    delay(1000);
  }
  selectChannel(0);

  sim.begin(9600);

  wdt_enable(WDTO_8S);

  printBootCompleteMessage();
}

void loop() {
  if (isChannelEnabled(selectedChannel)) {
    if (readIcc(selectedChannel)) {
      readMsisdn(selectedChannel);
    }
    if (readSmsAtIndex(FIRST_SMS_INDEX)) {
      deleteSmsAtIndex(FIRST_SMS_INDEX);
    }
  }

  selectNextChannel();

  wdt_reset();
}

ChannelStatusData* initChannel(int channel, bool enable) {
  channelsStatus[channel].channel = channel;
  resetChannelStatusData(channel);
  return enable ? enableChannel(channel) : disableChannel(channel);
}

ChannelStatusData* enableChannel(int channel) {
  digitalWrite(channelEnablePin[channel], HIGH);
  channelsStatus[channel].isEnabled = true;
  resetChannelStatusData(channel);
  return &channelsStatus[channel];
}

ChannelStatusData* disableChannel(int channel) {
  digitalWrite(channelEnablePin[channel], LOW);
  channelsStatus[channel].isEnabled = false;
  resetChannelStatusData(channel);
  return &channelsStatus[channel];
}

void resetChannelStatusData(int channel) {
  channelsStatus[channel].msisdn[0] = 0;
  channelsStatus[channel].icc[0] = 0;
  channelsStatus[channel].registrationStatus = UNKNOWN;
}

bool isChannelEnabled(int channel) {
  return channelsStatus[channel].isEnabled;
}

bool readIcc(int channel) {
  if (!isSimPresenceConfirmed(channel)) {
    sim.print(F("AT+CCID\r"));
    bool simPresent = readModemResponse(simData);
    if (simPresent) {
      return parseIcc(simData, channel);
    } else {
      return false;
    }
  } else {
    return true;
  }
}

bool isSimPresenceConfirmed(int channel) {
  return strlen(channelsStatus[channel].icc) > 0;
}

bool parseIcc(char* iccResponseData, int channel) {
  char* token = strtok (iccResponseData, "\r\n");
  while (token != NULL) {
    if (isValidIcc(token)) {
      if (strcmp(token, channelsStatus[channel].icc) != 0) {
        strcpy(channelsStatus[channel].icc, token);
      }
      return true;
    }
    token = strtok (NULL, "\r\n");
  }
  channelsStatus[channel].icc[0] = 0;
  return false;
}

bool isValidIcc(char* icc) {
  if (strlen(icc) >= 15) {
    while (icc[0] > 0) {
      if (icc[0] < 48 || (icc[0] > 57 && icc[0] != 'f' && icc[0] != 'F')) { // only 0..9, F or f chars
        return false;
      }
      icc++;
    }
    return true;
  } else {
    return false;
  }
}

void readMsisdn(int channel) {
  if (strlen(channelsStatus[channel].msisdn) == 0) {
    sim.print(F("AT+CNUM\r"));
    if (readModemResponse(simData)) {
      parseMsisdn(simData, channel);
    }
  }
}

void parseMsisdn(char* msisdnResponseData, int channel) {
  char* token = strtok (msisdnResponseData, "CNUM: ,\"\r\n");
  while (token != NULL) {
    if (isValidMsisdn(token)) {
      if (strcmp(token, channelsStatus[channel].msisdn) != 0) {
        strcpy(channelsStatus[channel].msisdn, token);
        return;
      }
    }
    token = strtok (NULL, "CNUM: ,\"\r\n");
  }
  strcpy(channelsStatus[channel].msisdn, "?");
}

bool isValidMsisdn(char* msisdn) {
  if (strlen(msisdn) > 5) {
    while (msisdn[0] > 0) {
      if ((msisdn[0] < 48 && msisdn[0] != 43) || msisdn[0] > 57) { // only 0..9 or '+' chars
        return false;
      }
      msisdn++;
    }
    return true;
  } else {
    return false;
  }
}

void readNetworkStatus(int channel) {
  sim.print(F("AT+CREG?\r"));
  bool statusReadCorrectly = readModemResponse(simData);
  if (statusReadCorrectly) {
    NetworkRegistrationStatus status = parseNetworkStatus(simData);
    if (status != UNKNOWN && status != channelsStatus[channel].registrationStatus) {
      channelsStatus[channel].registrationStatus = status;
    }
  } else {
    channelsStatus[channel].registrationStatus = UNKNOWN;
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
      return networkStatus >= 1 && networkStatus <= 10 ? (NetworkRegistrationStatus)networkStatus : UNKNOWN;
    }
    token = strtok (NULL, "\r\n");
  }
  return UNKNOWN;
}

void sendSmsToMsisdn(const char* msisdn, const char* sms) {
  sim.write("AT+CMGF=1\r");
  bool statusReadCorrectly = readModemResponse(simData);
  if (!statusReadCorrectly) {
     printErrorSendingSmsMessage();
     return;
  }
  sim.write("AT+CMGS=\"");
  sim.write(msisdn);
  sim.write("\"\r");
  readModemResponse(simData);
  sim.write(sms);
  sim.write("\r");
  readModemResponse(simData);
  sim.write(0x1A);
  readModemResponse(simData);

  printSmsSentMessage();
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
  readModemResponse(simData);
}

bool readModemResponse(char* response) {
  bool successCodeRead = false;

  readUntilResultCode(response);
  if (strlen(simData) > 0) {
    successCodeRead = strstr(simData, "\r\nOK") != NULL;
  }

  return successCodeRead;
}

void readUntilResultCode(char* response) {
  int retries = 0;
  simDataIndex = 0;
  while((simDataIndex < MODEM_RESPONSE_MAX_CHARS - 1) && (sim.available() > 0 || retries < MAX_READ_RETRIES)) {
    if (sim.available()) {
      response[simDataIndex++] = sim.read();
    } else {
      delay(NO_DATA_ON_READ_DELAY);
      retries++;
    }
  }
  response[simDataIndex] = 0;
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
  Serial.print(F("\", \"msisdn\": \""));
  Serial.print(channelsStatus[selectedChannel].msisdn);
  Serial.print(F("\", \"sender\": \""));
  printStringEscapingQuotes(smsData->sender);
  Serial.print(F("\", \"datetime\": \""));
  printStringEscapingQuotes(smsData->date);
  Serial.print(F(","));
  printStringEscapingQuotes(smsData->time);
  Serial.print(F("\", \"body\": \""));
  printStringEscapingQuotes(smsData->body);
  Serial.println(F("\"}"));
}

void printStringEscapingQuotes(char* str) {
  while (str[0] != 0) {
    if (str[0] == '"') {
      Serial.print("\\");
    }
    Serial.print(str[0]);
    str++;
  }
}

void printChannelStatusJson(ChannelStatusData* statusData) {
  Serial.print(F("{\"type\": \""));
  Serial.print(F("status"));
  Serial.print(F("\", \"channel\": "));
  Serial.print(statusData->channel);
  Serial.print(F(", \"isEnabled\": "));
  Serial.print(statusData->isEnabled);
  Serial.print(F(", \"icc\": \""));
  Serial.print(statusData->icc);
  Serial.print(F("\", \"msisdn\": \""));
  Serial.print(statusData->msisdn);
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

void printErrorSendingSmsMessage() {
  Serial.println(F("{\"type\": \"error\", \"body\": \"Error sending SMS\"}"));
}

void printSmsSentMessage() {
  Serial.println(F("{\"type\": \"info\", \"body\": \"SMS sent\"}"));
}

void printSupportMessage() {
  Serial.print(F("{\"type\": \"support\", \"body\": \""));
  Serial.print(F("Simtron v"));
  Serial.print(F(VERSION));
  Serial.print(F(" get support at https://github.com/wyunreal/simtron"));
  Serial.println(F("\"}"));
}

