#include <Servo.h>

class Channel {
public:
	Channel(int pin);

	void set(uint8_t value);

	uint8_t trim;
	bool inverted;

private:
	Servo channel;
	
};
