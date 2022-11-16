class Bola{
    //variáveis declaradas
    float arrancada, diameter;
    float x, y, dx, dy, targetx, targety, distancia_pos, variacao_cor, variacao_size;

//constructors
    Bola(float tempArrancada){
        //conversão da variável de argumento (temporária) para uma variável de fato (inicializando ela)
        arrancada = tempArrancada;
        diameter = tam_tela_min/8;
        //println(tempArrancada);
      
    }

    Bola(float tempArrancada,float tempDiameter){
        //conversão da variável de argumento (temporária) para uma variável de fato (inicializando ela)
        arrancada = tempArrancada;
        diameter = tempDiameter;
    }
    

//Functions

    void update_v1(){

        /* CHANGELOG V1

            Alteração no comportamento do tamanho das bolas p/ exponencial

        */

        //inicializando e usando as variáveis
        
        targetx = pos_x; targety = pos_y;
        dx = targetx - x; dy = targety - y;
        
        //calculando a distancia linear da bola ate o mouse
        distancia_pos = dist(pos_x,pos_y,x,y);
        
        //calculando a posicao da bola / determinando o comportamento
        if (distancia_pos>=0.5){
            x += dx * arrancada; y += dy * arrancada;
            //criando uma variacao de valores de 0 para 1 baseado na distancia e tamanho da tela
            variacao_cor = distancia_pos/(tam_tela_min/2);
        } else {
            x = pos_x; y = pos_y;
            variacao_cor = distancia_pos/tam_tela_min;
        }

        
        /*
        variação de tamanho de 0 à 1
         (função em distância do alvo) / (max distancia do alvo) 
        */
        variacao_size = 
        
            distancia_pos 
            
            / 
            
            diagonal_tela;
        

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
            x += dx * arrancada; y += dy * arrancada;
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