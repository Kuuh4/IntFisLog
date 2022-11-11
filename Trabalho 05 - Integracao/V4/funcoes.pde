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

void bolasseguirem(){
    //bolas que seguem    
         for (int i = 0; i < bolas.length; ++i) {
        bolas[i].update();
    }
}

void bolamouse(){
    //bola mouse
        fill(main_color);
        ellipse(mouseX, mouseY, bolas[0].diameter*(1-bolas[0].variacao_size), bolas[0].diameter*(1-bolas[0].variacao_size));
}
