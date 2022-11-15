
//PROCESSO DO VOID SETUP, OCORRE SOMENTE 1x PRA ALOCAR MEMÓRIA. NÂO INTERFERE EM VOIDDRAW()

//Código Chamado dentro de void setup()
//Fórmulas de variação de aceleração para construtor de Bola() baseado na quantidade de bolas.


void formulaArrancada_A(){
    //Cada vez menos arrancada linearmente   
        for (int i = 0; i < bolas.length; ++i) {
            bolas[i] = new Bola(
                
                //Função Logarítimica [ 1 / exponencial ]

                    1
                    /
                    ( (pow(2, 2)) * (i+1) )
                ) ;
        }
}



void formulaArrancada_B(){
    //Cada vez menos arrancada         
        for (int i = 0; i < bolas.length; ++i) {
            bolas[i] = new Bola(
                
                //Função Logarítimica [ 1 / exponencial ]

                    0.1
                    /
                    pow(2,i)
                
                );
        }
}