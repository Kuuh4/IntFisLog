/* autogenerated by Processing revision 1286 on 2022-11-10 */
import processing.core.*;
import processing.data.*;
import processing.event.*;
import processing.opengl.*;

import java.util.HashMap;
import java.util.ArrayList;
import java.io.File;
import java.io.BufferedReader;
import java.io.PrintWriter;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.IOException;

public class V4 extends PApplet {

//declaração os usos da classe nova (pra alocar as variáveis delas)
Bola b1;
Bola b2;
Bola b3;

 public void setup() {
    /* size commented out by preprocessor */;
    //criação do objeto
    b1 = new Bola(0.08f);
    b2 = new Bola(0.04f);
    b3 = new Bola(0.02f);

    fill(255);
    noStroke();

}

 public void draw() {
    background(0);

    ellipse(mouseX, mouseY, 20, 20);
    b3.update();
    b2.update();
    b1.update();
}
class Bola{
    //variáveis declaradas
    float accel;
    float x, y, dx, dy, targetx, targety;

//constructors
    Bola(float tempAccel){
        //conversão da variável de argumento (temporária) para uma variável de fato (inicializando ela)
        accel = tempAccel;
    }

//Functions

     public void update(){

        //inicializando e usando as variáveis
        float targetX = mouseX;
        float dx = targetX - x;
        x += dx * accel;
        
        float targetY = mouseY;
        float dy = targetY - y;
        y += dy * accel;

        //usando as variáveis
        ellipse(x, y, 20, 20);
    }
}


  public void settings() { size(400, 400); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "V4" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
