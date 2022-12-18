//bibliotecas necessárias
import processing.serial.*; //usado para ler as portas seriais p definir qual é o USB do arduino
import cc.arduino.*; //usada para criar objeto arduino p/ firmata
import org.firmata.*; //usada para se comunicar com o arduino com firmata dentro dele



//declaração os usos da classe nova (pra alocar as variáveis delas)
//INSERIR QUANTIDADE DE BOLAS EM new Bola[NUMERO]
Bola[] bolas = new Bola[20];

float var_arrancada = 0.3;//escrever esse valor como um valor de 0=>1, sendo que ele vai ser o maior valor da arrancada

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
  
    //ATIVAR COMANDO ABAIXO CASO VÁ CONECTAR COM ARDUINO. [se não for, trava o programa.]
    //verificarPortaSerial();
    
    //size(300,300);
    //fullScreen();

    //size(500,400,P2D);
    fullScreen(P2D);
    
    diagonal_tela = dist(0,0,width,height);
    tam_tela_min = min(width,height);
    backgroundx=0;
    
    //criação do objeto //ESCOLHER A FÓRMULA DE ARRANCADA. tem a _A _B _C _D e _Debug atualmente
    formulaArrancada_A();
    //formulaArrancada_B();
    //formulaArrancada_C();
    //formulaArrancada_D(); 
    //formulaArrancada_Debug();
    
    noCursor();
    noStroke();
}

void draw() {

    //DESATIVAR input_mouse() CASO FOR EXPERIMENTAR void mouseClicked()
    input_mouse();
    
    planodefundo();
    bolasseguirem_normal_v0();
    bolamouse_1();

}

void mouseClicked(){
    input_pos_aleatorio();
}
