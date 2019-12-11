#include <Arduino.h>

#if defined(BMP280)
	#include <Adafruit_BMP280.h>
#endif

class Telemetry {
public:
	Telemetry();

	float voltage();
	float temperature();
	float pressure();
	float altitude();
	void calibrate_altitude(float k);

#if defined(BMP280)
	double temperature, altitude, pressure;
#endif

private:
#if defined(BMP280)
	Adafruit_BMP280 bmp;
	float altitude_constant;	//pressure(hPa) at sea level in day in your region
#endif
};