//declaração os usos da classe nova (pra alocar as variáveis delas)
Bola[] bolas = new Bola[3];

float tam_tela_min;
float diagonal_tela;
int backgroundx;
boolean switch_bg;


color main_color = color(255, 255, 255);
color gradA_color = color(255, 255, 255);
color gradB_color = color(255, 0, 0);

void setup() {
    //size(500,400);
    fullScreen();
    
    diagonal_tela = dist(0,0,width,height);
    tam_tela_min = min(width,height);
    backgroundx=0;
    
    //criação do objeto
    bolas[0] = new Bola(0.08);
    bolas[1] = new Bola(0.04);
    bolas[2] = new Bola(0.02);

    
    noCursor();
    noStroke();
}

void draw() {

    //Planos de fundo
        //plano de fundo variável
            if(switch_bg==true){backgroundx++;}else{ backgroundx--;}
            if(backgroundx<=0){ switch_bg = true;}
            if(backgroundx>=255){ switch_bg = false;}

            //println(switch_bg+" | "+backgroundx); //debug cor fundo
            //background(backgroundx,backgroundx,255-backgroundx);
        
        //plano de fundo simples
            background(128);

    //bolas que seguem    
        bolas[0].update();
        bolas[1].update();
        bolas[2].update();

        println(bolas[2].variacao_size);
    
    //bola mouse
        fill(main_color);
        ellipse(mouseX, mouseY, bolas[0].diameter*(1-bolas[0].variacao_size), bolas[0].diameter*(1-bolas[0].variacao_size));
}
