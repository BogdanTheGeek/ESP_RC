#include "libs.h" 
NowConnection *connection;

void setup(){

	Serial.begin(9600);
	connection = new NowConnection();
	delay(500);

	String mac = connection->my_mac();
	Serial.println("My MAC:");
	Serial.println(mac);
}

void loop(){

	connection->send();
	Serial.println("Sent");
	delay(1000);

}
