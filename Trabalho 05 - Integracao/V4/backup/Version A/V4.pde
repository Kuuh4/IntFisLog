//declaração os usos da classe nova (pra alocar as variáveis delas)
Bola b1;
Bola b2;
Bola b3;

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
    b1 = new Bola(0.08);
    b2 = new Bola(0.04);
    b3 = new Bola(0.02);

    
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
        b3.update();
        b2.update();
        b1.update();

        println(b3.variacao_size);
    
    //bola mouse
        fill(main_color);
        ellipse(mouseX, mouseY, b1.diameter*(1-b1.variacao_size), b1.diameter*(1-b1.variacao_size));
}
