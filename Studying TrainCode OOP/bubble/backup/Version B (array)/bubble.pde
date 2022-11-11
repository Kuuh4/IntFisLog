Bubble[] bubbles = new Bubble[4];

void setup(){
    size(400,400);
  //b0 = new Bubble(x,y,diameter,colorr);  
    bubbles[0] = new Bubble(-150,50,64,color(#ffffff));
    bubbles[1] = new Bubble(-50,50,64,color(#ffffff));
    bubbles[2] = new Bubble(50,50,64,color(#ffffff));
    bubbles[3] = new Bubble(150,50,64,color(#ffffff));

    noStroke();

}

void draw(){
    background(128);
    
    bubbles[0].mover();
    bubbles[0].ascend();
    bubbles[0].debug();
    
    bubbles[1].mover();
    bubbles[1].ascend();
    bubbles[1].debug();
    
    bubbles[2].mover();
    bubbles[2].ascend();
    bubbles[2].debug();
    
    bubbles[3].mover();
    bubbles[3].ascend();
    bubbles[3].debug();

}

void mousePressed(){
    bubbles[0].pop();
    bubbles[1].pop();
    bubbles[2].pop();
    bubbles[3].pop();
}