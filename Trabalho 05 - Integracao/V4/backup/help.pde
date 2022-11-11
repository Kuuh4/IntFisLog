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

void formulaAccel_A(){
    for (int i = (bolas.length-1); i > 1 ; --i) {
    bolas[i] = new Bola((1/(sq(varAccel)))/(i+1));
    }
}

void formulaAccel_B(){
    for (int i = 0; i < bolas.length; ++i) {
    bolas[i] = new Bola((1/(sq(varAccel)))/(i+1));
    }
}

void setup() {
    //size(500,400,P2D);
    fullScreen(P2D);
    
    diagonal_tela = dist(0,0,width,height);
    tam_tela_min = min(width,height);
    backgroundx=0;
    
    //criação do objeto
    formulaAccel_A();
    
    
    noCursor();
    noStroke();
}

void draw() {
    planodefundo();
    bolasseguirem();
    bolamouse();

}

class Bola{
    //variáveis declaradas
    float accel, diameter;
    float x, y, dx, dy, targetx, targety, distancia_mouse, variacao_cor, variacao_size;

//constructors
    Bola(float tempAccel){
        //conversão da variável de argumento (temporária) para uma variável de fato (inicializando ela)
        accel = tempAccel;
        diameter = tam_tela_min/8;
    }

    Bola(float tempAccel,float tempDiameter){
        //conversão da variável de argumento (temporária) para uma variável de fato (inicializando ela)
        accel = tempAccel;
        diameter = tempDiameter;
    }
    

//Functions

    void update(){

        //inicializando e usando as variáveis
        
        targetx = mouseX; targety = mouseY;
        dx = targetx - x; dy = targety - y;
        
        //calculando a distancia linear da bola ate o mouse
        distancia_mouse = dist(mouseX,mouseY,x,y);
        
        //calculando a posicao da bola
        if (distancia_mouse>=0.5){
            x += dx * accel; y += dy * accel;
            //criando uma variacao de valores de 0 para 1 baseado na distancia e tamanho da tela
            variacao_cor = distancia_mouse/(tam_tela_min/2);
        } else {
            x = mouseX; y = mouseY;
            variacao_cor = distancia_mouse/tam_tela_min;
        }

        variacao_size = distancia_mouse/diagonal_tela;
        
        //noFill();
        fill(lerpColor(gradA_color, gradB_color, variacao_cor));

        //usando as variáveis
        ellipse(x, y, diameter*(1-variacao_size), diameter*(1-variacao_size));
    }
}