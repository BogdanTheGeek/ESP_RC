#include "libs.h"

const int channel_map[6] = {CH0, CH1, CH2, CH3, CH4, CH5};
Channel *channel[6];

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
char* in;

void setup() {

	for (int i = 0; i < 6; ++i)
	{
	channel[i] = new Channel(channel_map[i]);
	}

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


	in = connection->get_pkt_in();

}

void loop() {
	memcpy(&position_data, in, sizeof(in));

	channel[0]->set(position_data.ch0_pos);
}
