class Bola{
    float x;
    float y;
    float diameter;
    color cor;
    
    Bola(float tX, float tY,float tdiameter, color tCor){
        x=tX+width/2;
        y=tY+height;
        diameter = tdiameter ;
        cor = tCor;

        fill(cor);
    }

    void ascend(){
        y--;
        x=x+random(-2,2);
    }

    void mover(){
        ellipse(x,y,diameter,diameter);
    }

    void pop(){
        fill(255, 0, 0);
    }


}
