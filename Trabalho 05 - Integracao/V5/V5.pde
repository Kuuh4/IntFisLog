//declaração os usos da classe nova (pra alocar as variáveis delas)
Bola[] bolas = new Bola[5];


float tam_tela_min;
float diagonal_tela;
int backgroundx;
boolean switch_bg;

int pos_x;
int pos_y;

color main_color = color(255, 255, 255);
color gradA_color = color(255, 255, 255);
color gradB_color = color(255, 0, 0);


void setup() {
    //size(300,300);
    fullScreen();

    //size(500,400,P2D);
    //fullScreen(P2D);
    
    diagonal_tela = dist(0,0,width,height);
    tam_tela_min = min(width,height);
    backgroundx=0;
    
    //criação do objeto
    formulaArrancada_B();
    
    
    noCursor();
    noStroke();
}

void draw() {

    input_mouse();
    
    planodefundo();
    bolasseguirem_normal_v0();
    bolamouse_0();

}

void mouseClicked(){
    input_pos_aleatorio();
}
