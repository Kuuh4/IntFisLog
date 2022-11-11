class Bubble{
    float x;
    float y;
    float diameter;
    color colour;
    
    Bubble(float tX, float tY,float tdiameter, color tcolour){
        x=tX+width/2;
        y=tY+height;
        diameter = tdiameter ;
        colour = tcolour;

        ellipseMode(CENTER);
    }

    void ascend(){
        if (y>diameter/2) {
            y--;
        }
        x=x+random(-2,2);
    }

    void mover(){
        fill(colour);
        ellipse(x,y,diameter,diameter);
        //line(0 , y, width, y);
    }

    void pop(){
        colour = color(random(0,255),random(0,255),random(0,255));
    }

    void debug(){
        println(colour);
    };
}
