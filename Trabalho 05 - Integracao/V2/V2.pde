Bola b1;
Bola b2;
Bola b3;

void setup(){
    size(300,300);
  //b0 = new Bola(x,y,diameter,cor);  
    b1 = new Bola(100,50,64,color(1));
    b2 = new Bola(100,50,64,color(50));
    b3 = new Bola(20,70,33,color(70));
}

void draw(){
    background(128);
    
    b1.mover();
    b1.ascend();
    
    b2.mover();
    b2.ascend();
    
    b3.mover();
    b3.ascend();
    
    

}

void mousePressed(){
    b1.pop();
}




