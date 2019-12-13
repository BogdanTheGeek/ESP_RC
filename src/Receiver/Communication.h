#include "Configuration.h"
#include <WifiEspNow.h>

#if defined(ESP8266)
  	#include <ESP8266WiFi.h>
#elif defined(ESP32)
	#include "esp_system.h"
  	#include <WiFi.h>
#endif

class NowConnection {
public:
	NowConnection();

	void send();
	String my_mac();
	void set_peer_mac(String MAC);
	char* get_pkt_out();
	char* get_pkt_in();
	
private:
	String ME;
	uint8_t PEER[6];	
};

void receive_handler(const uint8_t mac[6], const uint8_t* buf, size_t count, void* cbarg);


