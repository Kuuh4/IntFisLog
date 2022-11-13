// Funções do código principal

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

void bolasseguiremA(){
    // Bolas se desenham na ordem da mais longe do mouse para mais perto. 
    //A bola desenhada + perto do mouse tá por cima   
        for (int i = (bolas.length-1); i >= 0 ; --i) {
        bolas[i].update();
        }
}

void bolasseguiremB(){
    // Bolas se desenham na ordem da mais perto do mouse para mais longe. 
    //A bola desenhada + longe do mouse tá por cima    
         for (int i = 0; i < bolas.length; ++i) {
        bolas[i].update();
    }
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
