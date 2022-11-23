/* autogenerated by Processing revision 1286 on 2022-11-23 */
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

public class Trabalho_07_G2_Jogo_Tenis extends PApplet {




 public void setup(){
/* size commented out by preprocessor */;

noStroke();


rectMode(CENTER);
}

 public void draw(){
  
  background(128);
  //lights();
  

  pushCena_jogo(); 
  //pushCena_cima(); 

    
    chao();
    bola01();
    chao_meio();
    

  pop();


 
  
}
//variaveis do cenário



//funções
     public void pushCena_jogo(){
        
        push();

            //translate do cenário.
            translate(width/2, height/2, 0);
            rotateX(PI/2.5f);

    }

     public void pushCena_cima(){
        
        push();

            //translate do cenário.
            translate(width/2, height/2, 0);
            //rotateX(PI/2.5);

    }

     public void bola01(){    
    
        noStroke();
        fill(255);

            push();

                translate(mouseX-width/2,mouseY-height/2,0);
                //sphere(10);
                box(10);

            pop();

    }

     public void chao(){
        
        fill(51);
        stroke(255);

            rect( 0, 0, width-20, height-20);
            

    }

     public void chao_meio(){
        stroke(255);
        line( -width/2+10,0,0,width/2-10,0,0);
    }


  public void settings() { size(500, 500, P3D); }

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Trabalho_07_G2_Jogo_Tenis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
