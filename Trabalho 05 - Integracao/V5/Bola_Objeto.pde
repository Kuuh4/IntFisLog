class Bola{
    //variáveis declaradas
    float accel, diameter;
    float x, y, dx, dy, targetx, targety, distancia_pos, variacao_cor, variacao_size;

//constructors
    Bola(float tempAccel){
        //conversão da variável de argumento (temporária) para uma variável de fato (inicializando ela)
        accel = tempAccel;
        diameter = tam_tela_min/8;
      
    }

    Bola(float tempAccel,float tempDiameter){
        //conversão da variável de argumento (temporária) para uma variável de fato (inicializando ela)
        accel = tempAccel;
        diameter = tempDiameter;
    }
    

//Functions
    void update_v1(){

        //inicializando e usando as variáveis
        
        targetx = pos_x; targety = pos_y;
        dx = targetx - x; dy = targety - y;
        
        //calculando a distancia linear da bola ate o mouse
        distancia_pos = dist(pos_x,pos_y,x,y);
        
        //calculando a posicao da bola / determinando o comportamento
        if (distancia_pos>=0.5){
            x += dx * accel; y += dy * accel;
            //criando uma variacao de valores de 0 para 1 baseado na distancia e tamanho da tela
            variacao_cor = distancia_pos/(tam_tela_min/2);
        } else {
            x = pos_x; y = pos_y;
            variacao_cor = distancia_pos/tam_tela_min;
        }

        variacao_size = distancia_pos/diagonal_tela;
        
        //noFill();
        fill(lerpColor(gradA_color, gradB_color, variacao_cor));

        //usando as variáveis
        ellipse(x, y, diameter*(1-variacao_size), diameter*(1-variacao_size));
    }

    void update_v0(){

        //inicializando e usando as variáveis
        
        targetx = pos_x; targety = pos_y;
        dx = targetx - x; dy = targety - y;
        
        //calculando a distancia linear da bola ate o mouse
        distancia_pos = dist(pos_x,pos_y,x,y);
        
        //calculando a posicao da bola
        if (distancia_pos>=0.5){
            x += dx * accel; y += dy * accel;
            //criando uma variacao de valores de 0 para 1 baseado na distancia e tamanho da tela
            variacao_cor = distancia_pos/(tam_tela_min/2);
        } else {
            x = pos_x; y = pos_y;
            variacao_cor = distancia_pos/tam_tela_min;
        }

        variacao_size = distancia_pos/diagonal_tela;
        
        //noFill();
        fill(lerpColor(gradA_color, gradB_color, variacao_cor));

        //usando as variáveis
        ellipse(x, y, diameter*(1-variacao_size), diameter*(1-variacao_size));
    }
}