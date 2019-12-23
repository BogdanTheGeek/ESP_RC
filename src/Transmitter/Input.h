#include <Ps3Controller.h>

class Controller {
public:
	Controller(int i);
	int lx();


private:
	static void ps3_notify();
	static void ps3_onConnect();

};