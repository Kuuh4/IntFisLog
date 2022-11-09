//colocar todos os elementos necessários para uma bola

class Bola {
  float x, y;
  float arrancada = 0.05;

  float targetX = mouseX;
    float dx = targetX - x;
  float targetY = mouseY;
    float dy = targetY - y;

  float distancia_mouse = dist(mouseX, mouseY, x, y);


  if (distancia_mouse<= 0.5){
    x = mouseX;
    y = mouseY;
  } else {
    x += dx * arrancada;
    y += dy * arrancada;
  }

  ellipse(x, y, 20, 20);
}