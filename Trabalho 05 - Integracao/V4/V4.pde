//declaração os usos da classe nova (pra alocar as variáveis delas)
Bola[] bolas = new Bola[1000];
float varAccel = (2);
int accelFormula = 1;

float tam_tela_min;
float diagonal_tela;
int backgroundx;
boolean switch_bg;


color main_color = color(255, 255, 255);
color gradA_color = color(255, 255, 255);
color gradB_color = color(255, 0, 0);

void setup() {
    //size(500,400,P2D);
    fullScreen(P2D);
    
    diagonal_tela = dist(0,0,width,height);
    tam_tela_min = min(width,height);
    backgroundx=0;
    
    //criação do objeto
    if (accelFormula==1) {
        for (int i = 0; i < bolas.length; ++i) {
        bolas[i] = new Bola((1/(sq(varAccel)))/(i+1));
    }    
    }
    
    
    noCursor();
    noStroke();
}

void draw() {
    planodefundo();
    bolamouse();
    bolasseguirem();
}


