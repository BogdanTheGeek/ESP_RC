#include "libs.h" 

NowConnection *connection;
Controller *controller;

CONTROLS channels_pos;
char* out;

void setup(){

	#if defined(DEBUG_OUT)
	Serial.begin(9600);
	#endif
	connection = new NowConnection();
	controller = new Controller(&channels_pos, 0);
	delay(500);

	#if defined(DEBUG_OUT)
	String mac = connection->my_mac();
	Serial.println("My MAC:");
	Serial.println(mac);
	#endif

	out = connection->get_pkt_out();

}

void loop(){

	memcpy(out, &channels_pos, sizeof(channels_pos));
  	connection->send(sizeof(channels_pos));
  	#if defined(DEBUG_OUT)
  	Serial.println("Sent");
  	#endif
	
	delay(100);

}
