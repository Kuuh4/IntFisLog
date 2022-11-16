//declaração os usos da classe nova (pra alocar as variáveis delas)
Bola[] bolas = new Bola[100];

float var_arrancada = 0.2;//escrever esse valor como um valor de 0=>1, sendo que ele vai ser o maior valor da arrancada

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
    size(300,300);
    //fullScreen();

    //size(500,400,P2D);
    //fullScreen(P2D);
    
    diagonal_tela = dist(0,0,width,height);
    tam_tela_min = min(width,height);
    backgroundx=0;
    
    //criação do objeto
    formulaArrancada_D(); //escolher a formula de arrancada. tem a _A _B e _Debug atualmente
    
    
    noCursor();
    noStroke();
}

void draw() {

    input_mouse();
    
    planodefundo();
    bolasseguirem_normal_v0();
    bolamouse_1();

}

void mouseClicked(){
    input_pos_aleatorio();
}
