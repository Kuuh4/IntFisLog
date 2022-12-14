void animateBall() {
  if (leftPaddle.contains(xPos, yPos) ||    // if the ball pos is inside the left paddle
  rightPaddle.contains(xPos, yPos)) {       // or the ball pos is inside the right paddle
    xDirection = -xDirection;               // reverse the ball's X direction
  }

  // if the ball goes off the screen left:
  if (xPos < 0) {
    rightScore++;
    resetBall();
  }
  // if the ball goes off the screen right:
  if (xPos > width) {
    leftScore++;
    resetBall();
  }


  // stop the ball going off the top or the bottom of the screen:
  if ((yPos <= 0) || (yPos >=height)) {
    // reverse the y direction of the ball:
    yDirection = -yDirection;
  }
  // update the ball position:
  xPos = xPos + xDirection;
  yPos = yPos + yDirection;

  // Draw the ball:
  rect(xPos, yPos, ballSize, ballSize);
}


void resetBall() {
  // put the ball back in the center
  xPos = width/2;
  yPos = height/2;
}

void switchSides() {
  Serial temp = EsploraList[0];      // save the first element temporarily
  EsploraList[0] = EsploraList[1];   // move the second elemdnt to the first
  EsploraList[1] = temp;             // put the first element in the second place
}