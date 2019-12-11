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
 - [ ] I2C telemetry
 - [ ] Bluetooth controller support for ESP32
 - [ ] GPS support
 - [ ] Multiple vehicle profiles configurable via AP
 - [ ] Easy vehicle controls setup via AP
 - [ ] Return to home mode (GPS)
 - [ ] Flight-controller features?

