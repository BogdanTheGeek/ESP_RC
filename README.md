# ESP_RC
An Open-Source Transmitter/Receiver for RC Planes, Cars, Boats and more based on the ESP8266 and ESP32 family of devices

## Operation

The ESP_RC project is based on the functionality of the ESP8266 and ESP32 use p2p comunication though Wi-fi 802.11n without the use of TCP or UDP. This is called ESP-Now and drastically reduces the latency of the transmission enableing real time control of RC vehicles.The two devices are linked together through their MAC address. The receiver sends telemetry to the transmitter and the transmitter sends controls back. The packet size is limited to 250 Bytes.
Current reciever designs are:
smol_boy_V1	
ESP8266 6-CH receiver with Battery voltage monitoring and I2C peripherals for more telemetry

There are no designs yet for a transmitter however there is a Linux Project that allows Direct comunication through ESP-Now from a PC. This might come in handy:
https://github.com/thomasfla/Linux-ESPNOW
The first working transmitter will hopefully be able to use a buetooth controller. From my research, the xbox one s controller is a bit tricky but the PS3 controller has a ESP-IDF library available here:
https://github.com/jvpernis/esp32-ps3
In the future we might want to build a custom controller with maybe even an LCD screen, accelerometer and so on.

## Features 
 - [x] Built in baterry voltage telemetry
 - [x] I2C expansion port telemetry
 - [x] Bluetooth controller support for ESP32
 - [ ] GPS support
 - [ ] Multiple vehicle profiles configurable via AP
 - [ ] Easy vehicle controls setup via AP
 - [ ] Return to home mode (GPS)
 - [ ] Flight-controller features?


## Supported I2C devices
| Support			| Name			| Description													|
|-------------------|---------------|---------------------------------------------------------------|
|:heavy_check_mark:	| BMP280 		| Temp, Altitude, Pressure										|
|:white_check_mark:	| MPU-6050		| Gyro, Acceleremeter											|
|:white_check_mark:	| LSM303D		| Compass, 3D accelerometer and 3D magnetometer module			|
|:white_check_mark:	| MPU-9250		| Gyro, Accelerometer + AK8963 magnetometer						|
|:white_check_mark:	| HMC5883		| Magnetomer													|
|:white_check_mark:	| ITG-3200		| 'Gaming' gyro													|
|:white_check_mark:	| INA219		| Bi-directional current meter									|
|:white_check_mark:	| Wii IR Sensor	| Tracks the 4 brighest IR Points in FOV (Missile tracking?)	|
|:white_check_mark:	| ZOE/SAM-M8Q	| GPS module													|
|:white_check_mark:	| XA1110		| GPS module													|
|:white_check_mark:	| LSM9DS1		| Gyro, Accelerometer, magnetometer								|
|:white_check_mark:	| ADS1115		| 4-CH ADC														|
|:white_check_mark:	| 24LC256		| EEPROM														|

## Credit

WifiEspNow library : https://github.com/yoursunny/WifiEspNow
ESP32-PS3 library : https://github.com/jvpernis/esp32-ps3/tree/develop
Espressif in their holyness.
