#include "libs.h" 
NowConnection *connection;

void setup(){

	#ifdef(DEBUG_OUT)
	Serial.begin(9600);
	#endif
	connection = new NowConnection();
	delay(500);

	#ifdef(DEBUG_OUT)
	String mac = connection->my_mac();
	Serial.println("My MAC:");
	Serial.println(mac);
	#endif
}

void loop(){

	connection->send();
	#ifdef(DEBUG_OUT)
	Serial.println("Sent");
	#endif
	delay(1000);

}
