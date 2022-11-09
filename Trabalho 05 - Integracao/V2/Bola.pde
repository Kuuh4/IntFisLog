/*
w - width da bola
h - height da bola
x - x position
y - y position
arrancada - arrancada 0 à 1
targetX - destino x
targetY - destino y
dx - distância entre x atual e destino x
dy - distância entre y atual e destino y
distancia_mouse - distãncia linear do ponto até o mouse, p/ variação de cor
*/

/*
class Bola {
  float x,y,arrancada,w,h,targetX,targetY,dx,dy,distancia_mouse;

  Bola(float w, float h, float arrancada){
  
  float targetX = mouseX;
    float dx = targetX - x;
  float targetY = mouseY;
    float dy = targetY - y; 

  float distancia_mouse = dist(mouseX, mouseY, x, y);
  
  } 

  void update(){
  
  if (distancia_mouse<= 0.5){
    x = mouseX;
    y = mouseY;
  } else {
    x += dx * arrancada;
    y += dy * arrancada;
  }

  ellipse(x, y, w, h);

  }

}
*/


class Bola{
  float posX, posY;
  Bola(float x, float y){
   
    }
  void update(){

    ellipse(posX, posY, 20, 20);
  }
}
