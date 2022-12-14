/*
  Processing Pong
 
 This sketch input serially from one or two Esploras to play a game of Pong.
 Esploras send four values, separated by commas, and ending with a linefeed:
 slider, switch 1, switch 3, switch 4
 
 The slider sets a paddle's height
 Switch 1 is resets the game
 Switch 2 resets the ball to the center
 Switch 3 reverses the players
 
 The Esplora example EsploraPong will send the correct values to this game.
 
 To start the game, select the Esplora's port number(s). You can play
 with one or two Esploras.
 
 created 22 Dec 2012
 by Tom Igoe
 
 This example is in the public domain.
 */

// https://docs.arduino.cc/library-examples/esplora-library/EsploraPong

import processing.serial.*;              // import the Serial library
import java.awt.Rectangle;               // import Java's Rectangle class

Serial[] EsploraList = new Serial[2];    // a list of Serial devices
int portCount = 0;                       // the number of serial ports that's been initialized
String portNumber = "";                  // string of the next port to be initialized

Rectangle leftPaddle, rightPaddle;       // Rectangles for the paddles

int resetButton = 1;              // reset button value
int serveButton = 1;              // serve button value
int switchSidesButton = 1;        // switch sides button value
int paddleHeight = 50;            // vertical dimension of the paddles
int paddleWidth = 10;             // horizontal dimension of the paddles

int ballSize = 10;     // the size of the ball
int xDirection = 2;    // the ball's horizontal direction. left is –2, right is 2.
int yDirection = 2;    // the ball's vertical direction. up is –2, down is 2.
int xPos, yPos;        // the ball's horizontal and vertical positions

boolean ballInMotion = false;  // whether the ball should be moving

int leftScore = 0;      // score for left player
int rightScore = 0;     // score for right player

int fontSize = 20;      // size of the fonts on the screen

void setup() {
  size(640, 480,P3D);       // set the size of the applet window

  // initialize the paddles:
  leftPaddle = new Rectangle(50, height/2, paddleWidth, paddleHeight);
  rightPaddle = new Rectangle(width-50, height/2, paddleWidth, paddleHeight);

  // set no borders on drawn shapes:
  noStroke();

  // initialize the ball in the center of the screen:
  xPos = width/2;
  yPos = height/2;

  // create a font with the third font available to the system:
  PFont myFont = createFont(PFont.list()[2], fontSize);
  textFont(myFont);
}


void draw() {
  // clear the screen:
  background(0);
  fill(255);

  // if there's not enough ports initialized:
  if (portCount < 2) {
    // get a list of the serial ports:
    String[] portList = Serial.list();
    // draw instructions on the screen:
    text("Type the port number of Esplora #" + (portCount+1), 20, 20);
    text("(or type enter to finish):", 20, 40);

    // draw the port list on the screen:
    for (int i = 0; i < portList.length; i++) {
      text("port " + i + ":  " + portList[i], 20, (i+4)*20);
    }
  } 
  
  // if you've got all the ports:
  else {
    // draw the left paddle:
    rect(leftPaddle.x, leftPaddle.y, leftPaddle.width, leftPaddle.height);
    // draw the right paddle:
    rect(rightPaddle.x, rightPaddle.y, rightPaddle.width, rightPaddle.height);
    // calculate the ball's position and draw it:
    if (ballInMotion == true) {
      animateBall();
    }

    // print the scores:
    text(leftScore, fontSize, fontSize);
    text(rightScore, width-fontSize, fontSize);
  }
}

