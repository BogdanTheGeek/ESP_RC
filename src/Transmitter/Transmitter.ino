#include "libs.h" 

NowConnection *connection;
Controller *controller;

typedef struct {
	uint8_t ch0_pos;
	uint8_t ch1_pos;
	uint8_t ch2_pos;
	uint8_t ch3_pos;
	uint8_t ch4_pos;
	uint8_t ch5_pos;

}CONTROLS;

CONTROLS position_data;
char* out;

void setup(){

	#if defined(DEBUG_OUT)
	Serial.begin(9600);
	#endif
	connection = new NowConnection();
	controller = new Controller(0);
	delay(500);

	#if defined(DEBUG_OUT)
	String mac = connection->my_mac();
	Serial.println("My MAC:");
	Serial.println(mac);
	#endif

	out = connection->get_pkt_out();

}

void loop(){

	// position_data.ch0_pos = map(analogRead(36),0,4095,0,255);
	// memcpy(out, &position_data, sizeof(position_data));
 //  	connection->send();
 //  	#if defined(DEBUG_OUT)
 //  	Serial.println("Sent");
 //  	#endif
	
	// delay(50);
	Serial.println(controller->lx());
	delay(500);

}
