#include <WifiEspNow.h>

#if defined(ESP8266)
  #include <ESP8266WiFi.h>
#elif defined(ESP32)
  #include <WiFi.h>
#endif

class NowConnection {
public:
	NowConnection();

	void send();
	String my_mac();

private:
	String ME;
	uint8_t TRANSMITTER[6] = {0x5E, 0xCF, 0x7F, 0x90, 0xFA, 0xE8};
};

void receive_handler(const uint8_t mac[6], const uint8_t* buf, size_t count, void* cbarg);


