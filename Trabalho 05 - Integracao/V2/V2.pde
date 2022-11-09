float x;
float y;
float arrancada = 0.05;
color a = color(255, 255, 255);
color ba = color(0, 255, 255);
color be = color(255, 255, 0);

// quando for trocar de mouse pra outra coisa, criar duas variáveis p/ mouseX e mouseY, pra depois trocar pelos sensores.

void setup() {
  //fullScreen();
  size(600,600);
  noStroke();  
  noCursor();
  
}


void draw() { 
  background(51);
  
    //declarações p/ tracking
    float targetX = mouseX;
    float dx = targetX - x;
    float targetY = mouseY;
    float dy = targetY - y;
    

    // Calor da cor baseado na proximidade da bolaMouse
    float tam_tela_min = min(width,height);
    float distancia_mouse = dist(mouseX, mouseY, x, y);
    float variacao_cor = distancia_mouse/tam_tela_min;
   
    //continuação tracking. If para reduzir necessidade de calculo quando em standby.
    if (distancia_mouse<=0.5) {
      x = mouseX;
      y = mouseY;
      
    } else {
      x += dx * arrancada;
      y += dy * arrancada;
      
    }
    

    color b = lerpColor(ba, be,variacao_cor);

    fill(b);
    ellipse(mouseX,mouseY,20,20);
    fill(a);
    ellipse(x,y,20,20);
    ellipse(x,0,20,20);
    ellipse(0,y,20,20);
    ellipse(x,height,20,20);
    ellipse(width,y,20,20);
  
 
  /*
  //Tradução Simples: 
  x = x + ((mouseX-x)*0.05);
  y = y + ((mouseY-y)*0.05);
  println("x: "+x+" | "+"y: "+y);
  */
  


  println(variacao_cor);
  
}