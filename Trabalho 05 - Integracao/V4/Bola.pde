class Bola{
    //variáveis
    float accel;
    float x, y, dx, dy, targetx, targety;

//constructors
    Bola(float tempAccel){
        //fixos
        accel = tempAccel;
    }

//Functions

    void update(){
        float targetX = mouseX;
        float dx = targetX - x;
        x += dx * accel;
        
        float targetY = mouseY;
        float dy = targetY - y;
        y += dy * accel;

        ellipse(x, y, 20, 20);
    }
}