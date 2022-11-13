
//PROCESSO DO VOID SETUP, OCORRE SOMENTE 1x PRA ALOCAR MEMÓRIA. NÂO INTERFERE EM VOIDDRAW()

//Código Chamado dentro de void setup()
//Fórmulas de variação de aceleração para construtor de Bola() baseado na quantidade de bolas.


void formulaAccel_A(){
    //Cada bola tem cada vez menos arracada     
        for (int i = 0; i < bolas.length; ++i) {
        bolas[i] = new Bola((1/(sq(varAccel)))/(i+1));
        }
}


void formulaAccel_B(){
    

    for (int i = 0; i < bolas.length; ++i) {
    bolas[i] = new Bola((1/(sq(varAccel)))/(i+1));
    }
}