//declaração os usos da classe nova (pra alocar as variáveis delas)
Bola b1;
Bola b2;
Bola b3;

void setup() {
    size(400,400);
    //criação do objeto
    b1 = new Bola(0.08);
    b2 = new Bola(0.04);
    b3 = new Bola(0.02);

    fill(255);
    noStroke();

}

void draw() {
    background(128);

    ellipse(mouseX, mouseY, 20, 20);
    b3.update();
    b2.update();
    b1.update();
}
