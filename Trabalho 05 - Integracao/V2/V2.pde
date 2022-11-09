Bola b1;

void setup(){
    size(300,300);
    b1 = new Bola();
}

void draw(){
    background(128);
    
    b1.mover();
    b1.ascend();
    

}

void mousePressed(){
    b1.pop();
}




class Bola{
    float x;
    float y;

    Bola(){
        x=width/2;
        y=height;
    }

    void ascend(){
        y--;
    }

    void mover(){
        ellipse(x,y,20,20);
    }

    void pop(){
        fill(255, 0, 0);
    }


}