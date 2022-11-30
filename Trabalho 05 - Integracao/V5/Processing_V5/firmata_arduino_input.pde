Arduino arduino;

    void verificarPortaSerial(){
        //a linha abaixo vai imprimir uma lista de portas seriais disponíveis
        //verificar em qual porta a sua arduino está conectada
        printArray(Arduino.list());
        arduino = new Arduino(this, Arduino.list()[0], 57600); //colocar aqui a porta serial
    }
