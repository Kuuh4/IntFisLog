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
float easing = 0.05;
color a = color(255, 255, 255);
color ba = color(0, 255, 255);
color be = color(255, 255, 0);


void setup() {
  fullScreen();
  //size(600,600);
  noStroke();  
  noCursor();
  
}


void draw() { 
  background(51);
    
    float targetX = mouseX;
    float dx = targetX - x;
    x += dx * 0.05;
    
    float targetY = mouseY;
    float dy = targetY - y;
    y += dy * 0.05;

    float tam_tela_angular = sqrt(sq(width)+sq(height));
    float distancia_percentil = (sqrt(sq(dx)+sq(dy)))/tam_tela_angular;
    color b = lerpColor(ba, be, distancia_percentil);
    
    ellipse(x,y,20,20);
    //ellipse(x,0,20,20);
    //ellipse(0,y,20,20);
    //ellipse(x,height,20,20);
    //ellipse(width,y,20,20);
    fill(b);
    ellipse(mouseX,mouseY,20,20);
    fill(a);

  
 
  /*
  //Tradução Simples: 
  x = x + ((mouseX-x)*0.05);
  y = y + ((mouseY-y)*0.05);
  println("x: "+x+" | "+"y: "+y);
  */
  


  println(tam_tela_angular);
  
}