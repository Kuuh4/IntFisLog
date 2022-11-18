#include <AbsMouse.h>
// https://github.com/jonathanedgecombe/absmouse
#include <Esplora.h>
// https://docs.arduino.cc/retired/archived-libraries/EsploraLibrary

void setup()
{
  Serial.begin(9600); 
  AbsMouse.init(1920, 1080);
}

void loop()
{
  int valueX = (1023-Esplora.readSlider()) +448;
  Serial.println(valueX);
  AbsMouse.move(valueX, 512);

  delay(20));
}