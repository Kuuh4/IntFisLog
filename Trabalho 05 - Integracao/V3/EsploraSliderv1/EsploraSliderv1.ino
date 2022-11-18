#include <AbsMouse.h>
// https://github.com/jonathanedgecombe/absmouse
#include <Esplora.h>
// https://docs.arduino.cc/retired/archived-libraries/EsploraLibrary

int modo = 0;

void setup()
{
  Serial.begin(9600); 
  AbsMouse.init(1920, 1080);
  int valueY = 0;
}

void loop()
{
  int button = Esplora.readButton(1); 

  for(;modo == 1;){
      
    int button = Esplora.readButton(1); 

      if (button == 0)  {
        modo = 0;   
        Esplora.writeRGB(255, 0, 255);
        delay(1000);
      }
       delay(100);
  }

  for(;modo == 0;){

    int button = Esplora.readButton(1); 
  
      if (button == 0)  {
        modo = 1;
        Esplora.writeRGB(0, 255, 0);
        delay(1000);
      }

      int valueX = (1023-Esplora.readSlider()) +448;     
      int valueY = (Esplora.readJoystickY()) +512;
      AbsMouse.move(valueX, valueY); 
      
      delay(20);
  }


}


