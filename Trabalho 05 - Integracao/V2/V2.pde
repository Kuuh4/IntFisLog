// Declare and construct two objects (h1, h2) from the class HLine 

Bola b1 = new Bola(100,100);

void setup() 
{
  size(200, 200);
  //fullScreen();
  frameRate(30);
  ellipseMode(CENTER);    
}

void draw() { 
  background(204);
  b1.update();
} 
 
