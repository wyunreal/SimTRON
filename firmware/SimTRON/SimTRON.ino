#include <SoftwareSerial.h>
#include <string.h>

#define RX 10
#define TX 11

#define CHANNEL_COUNT 8
#define CHANNEL_S0 2
#define CHANNEL_S1 3
#define CHANNEL_S2 4
#define SWITCH_CHANNEL_DELAY 50

#define MAX_READ_RETRIES 25
#define NO_DATA_ON_READ_DELAY 10

#define FIRST_SMS_INDEX 1

#define SMS_PARSER_STATE_HEAD 1
#define SMS_PARSER_STATE_BODY 2
#define SMS_HEAD_SENDER 2
#define SMS_HEAD_DATE 3
#define SMS_HEAD_TIME 4

struct SmsData {
  int channel;
  char sender[32];
  char date[16];
  char time[16];
  char* body;
};

int selectedChannel = 0;
int simDataIndex = 0;
char simData[1000];

int smsParserState;
int headElementsPart;

SoftwareSerial sim(RX, TX);

void setup() {
  Serial.begin(250000); 

  pinMode(CHANNEL_S0, OUTPUT);
  pinMode(CHANNEL_S1, OUTPUT);
  pinMode(CHANNEL_S2, OUTPUT);

  selectChannel(0);

  sim.begin(9600);
}

void loop() {
  if (readSmsAtIndex(FIRST_SMS_INDEX)) {
    deleteSmsAtIndex(FIRST_SMS_INDEX);
  }
  
  selectNextChannel();
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

void printSmsJson(SmsData* smsData) {
  Serial.print(F("{\"channel\":\""));
  Serial.print(smsData->channel);
  Serial.print(F("\", \"sender\":\""));
  Serial.print(smsData->sender);
  Serial.print(F("\", \"datetime\":\""));
  Serial.print(smsData->date);
  Serial.print(F(","));
  Serial.print(smsData->time);
  Serial.print(F("\", \"body\":\""));
  Serial.print(smsData->body);
  Serial.println(F("\"}"));
}

void deleteSmsAtIndex(int index) {
  sim.print(F("AT+CMGD="));
  sim.print(index);
  sim.print('\r');
  bool messageDeleted = readModemResponse(simData);
  return messageDeleted;
}

bool readModemResponse(char* response) {
  int retries = 0;
  int bytesReceived = 0;
  bool responseCodeRead = false;
  bool successCodeRead = false;
  bool errorCodeRead = false;

  bytesReceived = readUntilResultCode(response);

  if (strlen(simData) > 0) {
    successCodeRead = strstr(simData, "\r\nOK") != NULL;
    errorCodeRead = strstr(simData, "\r\nERROR") != NULL;
    responseCodeRead = successCodeRead || errorCodeRead;
  }
  
  return successCodeRead;
}

int readUntilResultCode(char* response) {
  int retries = 0;
  simDataIndex = 0;
  while(sim.available() > 0 || retries < MAX_READ_RETRIES) {
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

