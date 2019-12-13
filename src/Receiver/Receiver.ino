#include "libs.h"

const int channel_map[6] = {CH0, CH1, CH2, CH3, CH4, CH5};
Channel *channel[6];

NowConnection *connection;

void setup() {

	for (int i = 0; i < 6; ++i)
	{
	channel[i] = new Channel(channel_map[i]);
	}

	Serial.begin(9600);
	connection = new NowConnection();
	delay(500);
	String mac = connection->my_mac();
	Serial.println("My MAC:");
	Serial.println(mac);

	Serial.println("PEER MAC:");
	for (int i = 0; i < 6; ++i)
	{
		Serial.print(connection->PEER[i], HEX);
	}

}

void loop() {
  connection->send();
  Serial.println("Sent");
  delay(1000);
}
