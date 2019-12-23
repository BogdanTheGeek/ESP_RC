#include "Communication.h"

char packet_in[250];
char packet_out[250];

NowConnection::NowConnection(){

	WiFi.persistent(false);
	WiFi.mode(WIFI_AP);
	WiFi.softAP("ESPNOW", nullptr, 3);
	WiFi.softAPdisconnect(false);


	if (!WifiEspNow.begin()) {
		#if defined(DEBUG_OUT)
		Serial.println("ESP-Now failed to start");
		#endif
	  	ESP.restart();
	}

	WifiEspNow.onReceive(receive_handler, nullptr);

	this->set_peer_mac(TX_MAC);

	if (!WifiEspNow.addPeer(PEER)) {
		#if defined(DEBUG_OUT)
	  	Serial.println("ESP-Now couldnt add peer");
	  	#endif
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
	char buf[18];
	char * pEnd;

	MAC.toCharArray(buf, 18);

	for (int i = 0; i < 6; ++i){
		PEER[i] = (uint8_t)strtol(&buf[i*3], NULL, 16);
	}
}

void receive_handler(const uint8_t mac[6], const uint8_t* buf, size_t count, void* cbarg){
	#if defined(DEBUG_OUT)
	Serial.printf("Message from %02X:%02X:%02X:%02X:%02X:%02X\n", mac[0], mac[1], mac[2], mac[3], mac[4], mac[5]);
	#endif
	for (int i = 0; i < count; ++i) {
		packet_in[i] = static_cast<char>(buf[i]);
		#if defined(DEBUG)
	  	Serial.print(packet_in[i]);
	  	#endif
	}

}

void NowConnection::send(int l){
	WifiEspNow.send(PEER, reinterpret_cast<const uint8_t*>(packet_out), l);
}

char* NowConnection::get_pkt_out(){
	return packet_out;
}

char* NowConnection::get_pkt_in(){
	return packet_in;
}

int NowConnection::status(){
	if (WifiEspNow.getSendStatus() ==  WifiEspNowSendStatus::OK)
	{
		return 0;
	}
	return 1;
}