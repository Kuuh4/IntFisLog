

// serialEvent  method is run automatically whenever the buffer 
// reaches the byte value set by  bufferUntil():
void serialEvent(Serial thisPort) { 
  // read the serial buffer:
  String inputString = thisPort.readStringUntil('\n');

  // trim the carrige return and linefeed from the input string:
  inputString = trim(inputString);

  // split the input string at the commas
  // and convert the sections into integers:
  int sensors[] = int(split(inputString, ','));

  // if you received all the sensor values, use them:
  if (sensors.length == 4) {
    // if this is the left Esplora:
    if (thisPort == EsploraList[0] && EsploraList[0] != null) {
      // scale the sliders' results to the paddles' range:
      leftPaddle.y = int(map(sensors[0], 0, 1023, 0, height - leftPaddle.height));
    }
    // if this is the right Esplora:
    if (thisPort == EsploraList[1] && EsploraList[1] != null) {
      rightPaddle.y = int(map(sensors[0], 0, 1023, 0, height- rightPaddle.height));
    }
    // if the reset button changes state,
    // reset the score:
    if (resetButton == 1 && sensors[1] == 0) {
      leftScore = 0;
      rightScore = 0;
      resetBall();
      ballInMotion = true;
    }
    // save the current state of the reset button for comparison with the next reading:
    resetButton = sensors[1];

    // if the serve button changes state, reset the ball:
    if (serveButton == 1 && sensors[2] == 0) {
      resetBall();
      ballInMotion = true;
    }
    // save the current state of the serve button for comparison with the next reading:
    serveButton = sensors[2]; 
    
    // if the switch sides button changes state,
    // change the left and right players:
    if (switchSidesButton == 1 && sensors[3] == 0) {
      switchSides();
    }
    // save the current state of the switch sides button for comparison with the next reading:
    switchSidesButton = sensors[3];
  }
}


void keyReleased() {
  // if the enter key is pressed, stop looking for port number selections:
  if (key == ENTER) {
    if (portNumber != "" && portCount < 2) {
      choosePort(int(portNumber));
    }
    portCount++;
  }

  // if the user types 0 though 9, use it as a port number selection:
  if (key >= '0' && key <= '9') {
    portNumber += key;
  }
}

void choosePort(int whichPort) {
  // get the port name from the serial list:
  String portName = Serial.list()[whichPort];
  // initialize the next Esplora:
  EsploraList[portCount] = new Serial(this, portName, 9600);
  // read bytes into a buffer until you get a linefeed (ASCII 10):
  EsploraList[portCount].bufferUntil('\n');
  // clear the string holding the port number:
  portNumber = "";
}
