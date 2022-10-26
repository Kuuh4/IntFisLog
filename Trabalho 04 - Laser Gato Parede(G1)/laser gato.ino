#include <Servo.h>

Servo eixoX;  // create servo object to control a servo
Servo eixoY;  // create servo object to control a servo

int potX = 0;  // analog pin used to connect the potentiometer
int potY = 1;  // analog pin used to connect the potentiometer

int valX;    // variable to read the value from the analog pin
int valY;    // variable to read the value from the analog pin

void setup() {
  eixoX.attach(9);  // attaches the servo on pin 9 to the servo object
  eixoY.attach(10);  // attaches the servo on pin 9 to the servo object

}

void loop() {
  valX = analogRead(potX);            // reads the value of the potentiometer (value between 0 and 1023)
  valX = map(valX, 0, 1023, 0, 180);     // scale it to use it with the servo (value between 0 and 180)
  eixoX.write(valX);                  // sets the servo position according to the scaled value
  delay(15);                           // waits for the servo to get there

  valY = analogRead(potY);            // reads the value of the potentiometer (value between 0 and 1023)
  valY = map(valY, 0, 1023, 0, 180);     // scale it to use it with the servo (value between 0 and 180)
  eixoY.write(valY);                  // sets the servo position according to the scaled value
  delay(15);  
}