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
  for(;modo == 0;){

    int button = Esplora.readButton(1); 
  
    if (button == 0)  {
      modo = 1;
      Esplora.writeRGB(255, 255, 0);
      delay(200);
    }

    if (Esplora.readButton(4) == 0) {                           // if the joystick button is pressed
      AbsMouse.press(MOUSE_LEFT);                             // send a mouse click
    } else {
      AbsMouse.release(MOUSE_LEFT);                          // if it's not pressed, release the mouse button 
    }


    int valueX = map(Esplora.readSlider(),0,1023,1920,0);     
      
    int yValue = Esplora.readJoystickY();
    int mouseY = mouseY + map(yValue, -512, 512, -30, 30);
    AbsMouse.move(valueX, mouseY);


      
      delay(20);
  }

for(;modo == 1;){
      
    int button = Esplora.readButton(1); 

    if (button == 0)  {
      modo = 0;   
      Esplora.writeRGB(255, 0, 0);
      delay(120);
    }
       
    if (Esplora.readButton(4) == 0) {                           // if the joystick button is pressed
      AbsMouse.press(MOUSE_LEFT);                             // send a mouse click
    } else {
      AbsMouse.release(MOUSE_LEFT);                          // if it's not pressed, release the mouse button 
    }

      
    int xValue = Esplora.readJoystickX();
    int yValue = Esplora.readJoystickY();
    int mouseY = mouseY + map(yValue, -512, 512, -30, 30);
    int mouseX = mouseX + map(xValue, -512, 512, 30, -30);
    if(mouseX > 1920){mouseX=1919;}
    if(mouseX < 0){mouseX=0;}
    if(mouseY > 1080){mouseY=1080;}
    if(mouseY < 0){mouseY=1;}
    AbsMouse.move(mouseX, mouseY);

  Serial.print(mouseX);

    delay(20);
  
  
  
  
  }




}


