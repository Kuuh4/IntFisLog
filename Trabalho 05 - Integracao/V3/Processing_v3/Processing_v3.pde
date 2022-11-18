//declaração da bariavel da função nova

Bola b1;
Bola b2;
Bola b3;

void setup() {
    fullScreen();
    //size(400,400);
    //criação do objeto
    b1 = new Bola(0.05);
    b2 = new Bola(0.04);
    b3 = new Bola(0.03);

    fill(255);
    noStroke();

}

void draw() {
    background(0);

    b1.update();
    b2.update();
    b3.update();
}
