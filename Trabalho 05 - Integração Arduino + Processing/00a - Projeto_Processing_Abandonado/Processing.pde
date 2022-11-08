/* 
///Enunciado da Atividade///
Desenvolver um experimento que realize comunicação entre Arduino e Processing. 
Conectar um sensor na Arduino e receber no Processing as informações do sensor. 
Você pode utilizar um dos códigos anteriores desenvolvidos em Processing, e integra-lo com um sensor conectado na Arduino. 
Esse trabalho também pode ser considerado um ensaio para o seu trabalho G2.
///Exemplo comunicação
http://bonelli.usuarios.rdc.puc-rio.br/dsg1412/aula09/comunica_arduino_p5.html
*/

//Variáveis

    //Tradução Mouse
        int ratoX;
        int ratoY;
    //Objeto A
        int objA_x;
        int objA_y;
        int objA_w;
        int objA_h;

    //Objeto B
        int objB_x;
        int objB_y;
        int objB_w;
        int objB_h;

    //Objeto C
        int objC_x;
        int objC_y;
        int objC_w;
        int objC_h;

    //Objeto D
        int objD_x;
        int objD_y;
        int objD_w;
        int objD_h;

void setup() {
    fullScreen();
    frameRate(60);

}

void draw() {
background(128);

    //Variáveis

        //Adaptação Mouse
            ratoX = mouseX - (displayWidth/2);
            ratoY = mouseY - (displayHeight/2);
        //Objeto A
            objA_x = ratoX;
            objA_y = ratoY;
            objA_w = 50;
            objA_h = 50;

        //Objeto B
            objB_x = -100;
            objB_y = -100;
            objB_w = 50;
            objB_h = 50;

        //Objeto C
            objC_x = 50;
            objC_y = 50;
            objC_w = 50;
            objC_h = 50;

        //Objeto D
            objD_x = 275;
            objD_y = 275;
            objD_w = 50;
            objD_h = 50;

        
    translate(displayWidth/2, displayHeight/2);

    //Elipses
        ellipseMode(CENTER);
        ellipse(objA_x, objA_y, objA_w, objA_h);
        ellipse(objB_x, objB_y, objB_w, objB_h);
        ellipse(objC_x, objC_y, objC_w, objC_h);
        ellipse(objD_x, objD_y, objD_w, objD_h);


}




