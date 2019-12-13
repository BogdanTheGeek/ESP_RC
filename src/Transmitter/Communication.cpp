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

	this->set_peer_mac(TX_MAC);

	if (!WifiEspNow.addPeer(PEER)) {
	  Serial.println("ESP-Now couldnt add peer");
	  ESP.restart();
	}

#if defined(ESP8266)
	ME = WiFi.softAPmacAddress();
#elif defined(ESP32)
	uint8_t baseMac[6];
	// Get MAC address for WiFi station
	esp_read_mac(baseMac, ESP_MAC_WIFI_SOFTAP);
	char baseMacChr[18] = {0};
	sprintf(baseMacChr, "%02X:%02X:%02X:%02X:%02X:%02X", baseMac[0], baseMac[1], baseMac[2], baseMac[3], baseMac[4], baseMac[5]);
	ME = String(baseMacChr);
#endif

}

String NowConnection::my_mac(){
	return ME;
}
void NowConnection::set_peer_mac(String MAC){
	char buf[17];
	char * pEnd;

	MAC.toCharArray(buf, 17);

	for (int i = 0; i < 6; ++i){
		PEER[i] = (uint8_t)strtol(&buf[i*3], NULL, 16);
	}
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
  	WifiEspNow.send(PEER, reinterpret_cast<const uint8_t*>(msg), len);
  	delay(1000);
}