#include "Channels.h"

Channel::Channel(int pin){
  channel.attach(pin, 1000, 2000);
}

void Channel::set(uint8_t value){
  if(!this->inverted){
    channel.write(map(value+this->trim, 0, 255, 0, 180));
  }else{
    channel.write(map(255-value-this->trim, 0, 255, 0, 180));
  }
}
