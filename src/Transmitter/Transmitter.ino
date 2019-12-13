#include "libs.h" 
NowConnection *connection;


typedef struct {
	uint8_t ch0_pos;
	uint8_t ch1_pos;
	uint8_t ch2_pos;
	uint8_t ch3_pos;
	uint8_t ch4_pos;
	uint8_t ch5_pos;

}CONTROLS;

CONTROLS position_data;

void setup(){

	#if defined(DEBUG_OUT)
	Serial.begin(9600);
	#endif
	connection = new NowConnection();
	delay(500);

	#if defined(DEBUG_OUT)
	String mac = connection->my_mac();
	Serial.println("My MAC:");
	Serial.println(mac);
	#endif

	char* out = connection->get_pkt_out();
	memcpy(out, &position_data, sizeof(position_data));

}

void loop(){

	connection->send();
	#if defined(DEBUG_OUT)
	Serial.println("Sent");
	#endif
	delay(1000);

}
