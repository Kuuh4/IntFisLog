class Bola{
    //variáveis declaradas
    float accel;
    float x, y, dx, dy, targetx, targety, distancia_mouse, variacao_cor;

//constructors
    Bola(float tempAccel){
        //conversão da variável de argumento (temporária) para uma variável de fato (inicializando ela)
        accel = tempAccel;
    }

//Functions

    void update(){

        //inicializando e usando as variáveis
        
        targetx = mouseX;
        targety = mouseY;
        dx = targetx - x;
        dy = targety - y;
        
        float tam_tela_min = min(width,height);
        float distancia_mouse = dist(mouseX,mouseY,x,y);
        println(distancia_mouse);
        
        if (distancia_mouse>=0.5){
            x += dx * accel;
            y += dy * accel;
        }else {
            x = mouseX;
            y = mouseY;
        }

        variacao_cor = distancia_mouse/tam_tela_min;


        //usando as variáveis
        ellipse(x, y, 20, 20);
    }
}