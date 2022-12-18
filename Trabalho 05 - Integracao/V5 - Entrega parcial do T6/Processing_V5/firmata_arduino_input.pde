//INÍCIO DE TENTATIVA DE INTEGRAÇÂO, PORÈM, SEGUE NO T7. COMO A T6 É PROPOSTA, ENTREGO SEM ISSO CONSOLIDADO


 Arduino arduino;

    void verificarPortaSerial(){
        //a linha abaixo vai imprimir uma lista de portas seriais disponíveis
        //verificar em qual porta a sua arduino está conectada
        printArray(Arduino.list());
        arduino = new Arduino(this, Arduino.list()[0], 57600); //colocar aqui a porta serial
    }
