#include "libs.h" 
NowConnection *connection;

void setup(){

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

void loop(){

	connection->send();
	#ifdef(DEBUG)
	Serial.println("Sent");
	#endif
	delay(1000);

}
