// Funções do código principal

//Bola que representa o mouse
    
    //V1 - tem o mesmo tamanho de bolas[0]
    void bolamouse_1(){
        fill(main_color);
        ellipse(pos_x, pos_y, bolas[0].diameter*(1-bolas[0].variacao_size), bolas[0].diameter*(1-bolas[0].variacao_size));
    }
    
    //V0 - Tamanho Fixo
    void bolamouse_0(){
        fill(main_color);
        ellipse(pos_x, pos_y, bolas[0].diameter, bolas[0].diameter);
    }


//Variações da função que desenha as bolas na tela a cada frame.
    
    //ESTRUTURA DO NOME DAS VARIANTES
        // "bolasseguirem_"+"normal/invertido"+"Versão do update"
            // Normal / invertido: Se referem à qual ordem as bolas são renderizadas
            // Versão do update: variações da função que determina o comportamento das bolas 
    
    //V0

    void bolasseguirem_normal_v0(){
    
            for (int i = (bolas.length-1); i >= 0 ; --i) {
            bolas[i].update_v0();
            }
    }

    void bolasseguirem_inverso_v0(){
    
            for (int i = 0; i < bolas.length; ++i) {
            bolas[i].update_v0();
        }
    }

void planodefundo(){
    //Planos de fundo
        //plano de fundo variável
            if(switch_bg==true){backgroundx++;}else{backgroundx--;}
            if(backgroundx<=0){ switch_bg = true;}
            if(backgroundx>=255){ switch_bg = false;}

            //println(switch_bg+" | "+backgroundx); //debug cor fundo
            //background(backgroundx,backgroundx,255-backgroundx);
        
        //plano de fundo simples
            background(128);
}


void input_pos_aleatorio(){
    pos_x=int(random(0,width));
    pos_y=int(random(0,height));
}

void input_mouse(){
    pos_x = mouseX;
    pos_y = mouseY;
}
