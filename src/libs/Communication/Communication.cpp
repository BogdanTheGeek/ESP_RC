#include "Communication.h"

char packet_received[250];


NowConnection::NowConnection(){

	WiFi.persistent(false);
	WiFi.mode(WIFI_AP);
	WiFi.softAP("ESPNOW", nullptr, 3);
	WiFi.softAPdisconnect(false);


	if (!WifiEspNow.begin()) {
	  Serial.println("ESP-Now failed to start");
	  ESP.restart();
	}

	WifiEspNow.onReceive(receive_handler, nullptr);

	if (!WifiEspNow.addPeer(TRANSMITTER)) {
	  Serial.println("ESP-Now couldnt add peer");
	  ESP.restart();
	}

	ME = WiFi.softAPmacAddress();

}

String NowConnection::my_mac(){
	return ME;
}

void receive_handler(const uint8_t mac[6], const uint8_t* buf, size_t count, void* cbarg){
	

	Serial.printf("Message from %02X:%02X:%02X:%02X:%02X:%02X\n", mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
	
	for (int i = 0; i < count; ++i) {
		packet_received[i] = static_cast<char>(buf[i]);
	  Serial.print(packet_received[i]);
	}

}

void NowConnection::send(){
	char msg[60];
  	int len = snprintf(msg, sizeof(msg), "hello ESP-NOW from %s at %lu", WiFi.softAPmacAddress().c_str(), millis());
  	WifiEspNow.send(TRANSMITTER, reinterpret_cast<const uint8_t*>(msg), len);
  	delay(1000);
}