// Funções do código principal

//Variações da função que desenha as bolas na tela a cada frame.
    
    //ESTRUTURA DO NOME DAS VARIANTES
        // "bolasseguirem_"+"normal/invertido"+"Versão do update"
            // Normal / invertido: Se referem à qual ordem as bolas são renderizadas
            // Versão do update: variações da função que determina o comportamento das bolas 
    
    void bolasseguirem_normal_v1(){
    // Bolas se desenham na ordem da mais longe do mouse para mais perto. 
    //A bola desenhada + perto do mouse tá por cima   
        for (int i = (bolas.length-1); i >= 0 ; --i) {
        bolas[i].update_v1();
        }
    }

    void bolasseguirem_inverso_v0(){
        // Bolas se desenham na ordem da mais perto do mouse para mais longe. 
        //A bola desenhada + longe do mouse tá por cima    
            for (int i = 0; i < bolas.length; ++i) {
            bolas[i].update_v0();
        }
    }
    
    void bolasseguirem_normal_v0(){
        // Bolas se desenham na ordem da mais longe do mouse para mais perto. 
        //A bola desenhada + perto do mouse tá por cima   
            for (int i = (bolas.length-1); i >= 0 ; --i) {
            bolas[i].update_v0();
            }
    }

    void bolasseguirem_inverso_v0(){
        // Bolas se desenham na ordem da mais perto do mouse para mais longe. 
        //A bola desenhada + longe do mouse tá por cima    
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


void bolamouse(){
    //bola mouse
        fill(main_color);
        ellipse(pos_x, pos_y, bolas[0].diameter*(1-bolas[0].variacao_size), bolas[0].diameter*(1-bolas[0].variacao_size));
}

void input_pos_aleatorio(){
    pos_x=int(random(0,width));
    pos_y=int(random(0,height));
}

void input_mouse(){
    pos_x = mouseX;
    pos_y = mouseY;
}
