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
    formulaAccel_B();
    
    
    noCursor();
    noStroke();
}

void draw() {
    planodefundo();
    bolasseguirem();
    bolamouse();

}