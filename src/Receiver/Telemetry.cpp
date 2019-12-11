#include "Telemetry.h"

Telemetry::Telemetry(){
#if defined(BMP280)
  if(bmp.begin()) {
  	/* Default settings from datasheet. */
  	bmp.setSampling(Adafruit_BMP280::MODE_NORMAL,     /* Operating Mode. */
  	                Adafruit_BMP280::SAMPLING_X2,     /* Temp. oversampling */
  	                Adafruit_BMP280::SAMPLING_X16,    /* Pressure oversampling */
  	                Adafruit_BMP280::FILTER_X16,      /* Filtering. */
  	                Adafruit_BMP280::STANDBY_MS_500); /* Standby time. */

  	altitude_constant = 1019.66;
  }
#endif
}


#if defined(BMP280)
float Telemetry::temperature(){
	return bmp.readTemperature();
}

float Telemetry::pressure(){
	return bmp.readPreassure()/100;
}
float Telemetry::altitude(){
	return bmp.readAltitude(ALT_CAL);
}

float Telemetry::voltage(){
	return (analogRead(V_BAT) / 1024.0) * (1/0.033);
}

void Telemetry::calibrate_altitude(float k){
	altitude_constant = k;
}
#endif