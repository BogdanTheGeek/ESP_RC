# ESP_RC
An Open-Source Transmitter/Receiver for RC Planes, Cars, Boats and more based on the ESP8266 and ESP32 family of devices

## Operation

The ESP_RC project is based on the functionality of the ESP8266 and ESP32 use p2p comunication though Wi-fi 802.11n without the use of TCP or UDP. This is called ESP-Now and drastically reduces the latency of the transmission enableing real time control of RC vehicles.The two devices are linked together through their MAC address. The receiver sends telemetry to the transmitter and the transmitter sends controls back. The packet size is limited to 250 Bytes.
Current reciever designs are:
smol_boy_V1	
ESP8266 6-CH receiver with Battery voltage monitoring and I2C peripherals for more telemetry

There are no designs yet for a transmitter however there is a Linux Project that allows Direct comunication through ESP-Now from a PC. This might come in handy:
https://github.com/thomasfla/Linux-ESPNOW

## Features 
 - [x] Built in baterry voltage telemetry
 - [x] I2C expansion port telemetry
 - [ ] Bluetooth controller support for ESP32
 - [ ] GPS support
 - [ ] Multiple vehicle profiles configurable via AP
 - [ ] Easy vehicle controls setup via AP
 - [ ] Return to home mode (GPS)
 - [ ] Flight-controller features?


## Supported I2C devices
| Support	| Name		| Description							|
|---------------|---------------|---------------------------------------------------------------|
| - [x] 	| BMP280 	| Temp, Altitude, Pressure					|
| - [ ] 	| MPU-6050	| Gyro, Acceleremeter						|
| - [ ] 	| LSM303D	| Compass, 3D accelerometer and 3D magnetometer module		|
| - [ ]		| MPU-9250	| Gyro, Accelerometer + AK8963 magnetometer			|
| - [ ]		| HMC5883	| Magnetomer							|
| - [ ]		| ITG-3200	| 'Gaming' gyro							|
| - [ ]		| INA219	| Bi-directional current meter					|
| - [ ]		| Wii IR Sensor	| Tracks the 4 brighest IR Points in FOV (Missile tracking?)	|
| - [ ]		| ZOE/SAM-M8Q	| GPS module							|
| - [ ]		| XA1110	| GPS module							|
| - [ ]		| LSM9DS1	| Gyro, Accelerometer, magnetometer				|
| - [ ]		| ADS1115	| 4-CH ADC							|
| - [ ]		| 24LC256	| EEPROM							|

## Credit

WifiEspNow library : https://github.com/yoursunny/WifiEspNow
Espressif in their holyness.
