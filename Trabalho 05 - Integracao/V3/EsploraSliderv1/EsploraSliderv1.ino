#include <AbsMouse.h>
// https://github.com/jonathanedgecombe/absmouse
#include <Esplora.h>
// https://docs.arduino.cc/retired/archived-libraries/EsploraLibrary

#include <Mouse.h>

int modo = 0;

void setup()
{
  Serial.begin(9600); 
  AbsMouse.init(1920, 1080);
  Mouse.begin();


  int valueY = 0;
}

void loop()
{
  for(;modo == 0;){

    int button = Esplora.readButton(1); 
  
      if (button == 0)  {
        modo = 1;
        Esplora.writeRGB(255, 0, 0);
        delay(100);
      }

      int valueX = (1023-Esplora.readSlider()) +448;     
      int valueY = (Esplora.readJoystickY()) +512;
      AbsMouse.move(valueX, valueY); 
      
      delay(20);
  }

  for(;modo == 1;){
        
      int button = Esplora.readButton(1); 

        if (button == 0)  {
          modo = 2;   
          Esplora.writeRGB(0, 255, 0);
          delay(100);
        }
        delay(100);
    }

    for(;modo == 2;){
        
      int button = Esplora.readButton(1); 

        if (button == 0)  {
          modo = 0;   
          Esplora.writeRGB(0, 255, 255);
          delay(100);
        }

        int xValue = Esplora.readJoystickX();        // read the joystick's X position
        int yValue = Esplora.readJoystickY();  
        int mouseX = map(xValue, -512, 512, 10, -10);  // map the X value to a range of movement for the mouse X
        int mouseY = map(yValue, -512, 512, -10, 10);
        Mouse.move(mouseX, mouseY, 0); 

          if (Esplora.readButton(4) == 0) {                           // if the joystick button is pressed
            Mouse.press();                             // send a mouse click
          } else {
            Mouse.release();                           // if it's not pressed, release the mouse button 
          }

        delay(20);
    }


}


