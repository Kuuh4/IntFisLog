Bubble b1;
Bubble b2;
Bubble b3;

void setup(){
    size(300,300);
  //b0 = new Bubble(x,y,diameter,colorr);  
    b1 = new Bubble(100,50,64,color(#ffffff));
    b2 = new Bubble(100,50,64,color(#000000));
    b3 = new Bubble(20,70,33,color(#aaaaaa));
}

void draw(){
    background(128);
    
    b1.mover();
    b1.ascend();
    
    b2.mover();
    b2.ascend();
    
    b3.mover();
    b3.ascend();
    
    b1.debug();
    b3.debug();

}

void mousePressed(){
    b1.pop();
}