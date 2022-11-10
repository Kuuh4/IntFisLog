class Bola{
    //variáveis declaradas
    float accel;
    float x, y, dx, dy, targetx, targety;

//constructors
    Bola(float tempAccel){
        //conversão da variável de argumento (temporária) para uma variável de fato (inicializando ela)
        accel = tempAccel;
    }

//Functions

    void update(){

        //inicializando e usando as variáveis
        float targetX = mouseX;
        float dx = targetX - x;
        x += dx * accel;
        
        float targetY = mouseY;
        float dy = targetY - y;
        y += dy * accel;

        //usando as variáveis
        ellipse(x, y, 20, 20);
    }
}