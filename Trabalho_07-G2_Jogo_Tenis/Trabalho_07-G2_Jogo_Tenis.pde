void setup(){
size(500,500,P3D);

noStroke();
}

void draw(){
  
  background(128);
  //lights();
  
  
  
  push();
  translate(mouseX,mouseY,mouseY);
  sphere(10);
  pop();
  
  println("");
  
  
  
}