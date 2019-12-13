#include "libs.h"

const int channel_map[6] = {CH0, CH1, CH2, CH3, CH4, CH5};
Channel *channel[6];

NowConnection *connection;

void setup() {

	for (int i = 0; i < 6; ++i)
	{
	channel[i] = new Channel(channel_map[i]);
	}

	#ifdef(DEBUG)
	Serial.begin(9600);
	#endif

	connection = new NowConnection();
	delay(500);

	#ifdef(DEBUG)
	String mac = connection->my_mac();
	Serial.println("My MAC:");
	Serial.println(mac);
	#endif

}

void loop() {
  connection->send();
  #ifdef(DEBUG)
  Serial.println("Sent");
  #endif
  delay(1000);
}
