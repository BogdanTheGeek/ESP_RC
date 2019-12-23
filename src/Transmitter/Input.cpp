#include "Input.h"

CONTROLS *position_data;

Controller::Controller(CONTROLS *p, int i){

	position_data = p;
	switch(i){
	case 0:
		Ps3.attach(this->ps3_notify);
		Ps3.attachOnConnect(this->ps3_onConnect);
		Ps3.begin("01:02:03:04:05:06");
		#if defined(DEBUG_OUT)
		Serial.println("Connecting to PS3 controller");
		#endif
		while(!Ps3.isConnected()){
			delay(100);
		}
	break;
	}
}


void Controller::ps3_onConnect(){
	#if defined(DEBUG_OUT)
	Serial.println("Connected!.");
	#endif
}

void Controller::ps3_notify(){
	// if( Ps3.data.button.cross ){
	// }

	// if( Ps3.data.button.square ){
	// }

	// if( Ps3.data.button.triangle ){

	// }

	// if( Ps3.data.button.circle ){

	// }
	if (Ps3.event.analog_changed.stick.lx)
	{
		position_data->ch0_pos = Ps3.data.analog.stick.lx + 128;
	}
	if (Ps3.event.analog_changed.stick.ly)
	{
		position_data->ch1_pos = Ps3.data.analog.stick.ly + 128;
	}
	if (Ps3.event.analog_changed.stick.rx)
	{
		position_data->ch2_pos = Ps3.data.analog.stick.rx + 128;
	}
	if (Ps3.event.analog_changed.stick.ry)
	{
		position_data->ch3_pos = Ps3.data.analog.stick.ry + 128;
	}
}