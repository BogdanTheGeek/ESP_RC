#include <Ps3Controller.h>

typedef struct {
	uint8_t ch0_pos;
	uint8_t ch1_pos;
	uint8_t ch2_pos;
	uint8_t ch3_pos;
	uint8_t ch4_pos;
	uint8_t ch5_pos;

}CONTROLS;

class Controller {
public:
	Controller(CONTROLS *p, int i);

private:
	static void ps3_notify();
	static void ps3_onConnect();
};