/**
 * Easing. 
 * 
 * Move the mouse across the screen and the symbol will follow.  
 * Between drawing each frame of the animation, the program
 * calculates the difference between the position of the 
 * symbol and the cursor. If the distance is larger than
 * 1 pixel, the symbol moves part of the distance (0.05) from its
 * current position toward the cursor. 
 */
 
float x;
float y;
//float easing = 0.05;

void setup() {
  //fullScreen();
  size(200,200);
  noStroke();  
}

void draw() { 
  background(51);
  
  ellipse(mouseX,mouseY,20,20);
  ellipse(x,0,20,20);
  ellipse(0,y,20,20);
 
  
  x = x + ((mouseX-x)*0.05);
  y = y + ((mouseX-y)*0.05);
  
  
  /* 
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
  ellipse(mouseX, mouseY, x, y);
  */
}