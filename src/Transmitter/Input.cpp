#include "Input.h"

Controller::Controller(int i){
	switch(i){
	case 0:
		//Ps3.attach(this->ps3_notify);
		//Ps3.attachOnConnect(this->ps3_onConnect);
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

int Controller::lx(){
	return (int)(Ps3.data.analog.stick.lx);
}

void Controller::ps3_onConnect(){
	#if defined(DEBUG_OUT)
	Serial.println("Connected!.");
	#endif
}

void Controller::ps3_notify(){
	if( Ps3.data.button.cross ){
	}

	if( Ps3.data.button.square ){
	}

	if( Ps3.data.button.triangle ){

	}

	if( Ps3.data.button.circle ){

	}
}