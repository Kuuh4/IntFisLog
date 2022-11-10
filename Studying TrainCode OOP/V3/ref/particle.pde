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
    void display(){
        stroke(255);
        strokeWeight(4);
        noFill();
        ellipse(x, y, r*2, r*2);
        
    }

    boolean overlaps(Particle other){
        float d = dist(x,y,other.x,other.y);
        if(d < (r+other.r)){
            return true;
        } else {
            return false;
        }
    }
    

}