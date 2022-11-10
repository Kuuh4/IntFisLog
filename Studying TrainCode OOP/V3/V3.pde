//declaração da bariavel da função nova
Bola b1;

void setup() {
    size(400,400);
    //criação do objeto
    b1 = new Bola(0.05);

}

void draw() {
    background(0);

    b1.update();
}
