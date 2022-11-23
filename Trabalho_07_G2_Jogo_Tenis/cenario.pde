//variaveis do cenário



//funções
    void pushCena_jogo(){
        
        push();

            //translate do cenário.
            translate(width/2, height/2, 0);
            rotateX(PI/2.5);

    }

    void pushCena_cima(){
        
        push();

            //translate do cenário.
            translate(width/2, height/2, 0);
            //rotateX(PI/2.5);

    }

    void bola01(){    
    
        noStroke();
        fill(255);

            push();

                translate(mouseX-width/2,mouseY-height/2,0);
                //sphere(10);
                box(10);

            pop();

    }

    void chao(){
        
        fill(51);
        stroke(255);

            rect( 0, 0, width-20, height-20);
            

    }

    void chao_meio(){
        stroke(255);
        line( -width/2+10,0,0,width/2-10,0,0);
    }


