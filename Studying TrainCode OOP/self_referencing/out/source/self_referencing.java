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

public class self_referencing extends PApplet {

Particle p1;
Particle p2;

 public void setup() {
    /* size commented out by preprocessor */;
    p1 = new Particle(100,100,50);
    p2 = new Particle();

}

 public void draw() {
    background(0);

    if (p1.overlaps(p2)){
        background(0,255,0);
    }
    
    p2.x = mouseX;
    p2.y = mouseY;

    p1.display();
    p2.display();
}
class Particle{
    float x, y;
    float r;

//Constructors
    //constructor for 0 arguments
    Particle(){
    x = random(0,width);
    y = random(0,height);
    r = random(4,14);
    }
    
    //constructor for 4 arguments
    Particle(float tempX,float tempY,float tempR){
    x = tempX;
    y = tempY;
    r = tempR;
    }

//Functions
     public void display(){
        stroke(255);
        strokeWeight(4);
        noFill();
        ellipse(x, y, r*2, r*2);
        
    }

     public boolean overlaps(Particle other){
        float d = dist(x,y,other.x,other.y);
        if(d < (r+other.r)){
            return true;
        } else {
            return false;
        }
    }
    

}


  public void settings() { size(600, 400); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "self_referencing" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}