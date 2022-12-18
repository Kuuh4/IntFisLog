
//PROCESSO DO VOID SETUP, OCORRE SOMENTE 1x PRA ALOCAR MEMÓRIA. NÂO INTERFERE EM VOIDDRAW()

//Código Chamado dentro de void setup()
//Fórmulas de variação de aceleração para construtor de Bola() baseado na quantidade de bolas.

void formulaArrancada_Debug(){
    //fazer gráfico invertido modular em x tbm.

    //Consegui inverter(Parte)!!! 
    //Falta ainda fazer a escala de C, tal qual no outro gráfico, reduzir o valor máximo/da primeira bola
    //https://www.desmos.com/calculator/gjdupw0u3o

    //esse aqui do grafico anterior ajudou variar o expoente menor que 1. parece servir!!
    //https://www.desmos.com/calculator/cuvt2dbthx

    for (int i = 0; i < bolas.length; ++i) {
            bolas[i] = new Bola(1);
        }

}




void formulaArrancada_D(){
    //Cada vez menos arrancada linearmente. Quanto mais bolas a última bola fica mais lenta
    //Alguns valores legais:
    //10 bolas, var arrancada 0.5   
        for (int i = 0; i < bolas.length; ++i) {
            bolas[i] = new Bola( 

                        /*
                        gráficos interativos feitos da modulação matemática
                        https://www.desmos.com/calculator/fdc5ydw7re
                        
                        AS VARIAVEIS i e bolas.length SÃO INT, TEM QUE COLOCAR ELAS DENTRO DO float(int)
                        Senão os valores são calculados como 0

                        var_arrancada é um valor para alterar de 1 para baixo o valor máximo de arrancada
                        
                        Diferente dos outros, com esse a gente conseguiria ter o contole da arrancada mínima e máxima
                        
                        */
                
                        ((((1/(float(bolas.length)+1))*(-((float(i))+1)))+1)*(var_arrancada))
                                            
                        );
        }
}

void formulaArrancada_C(){
    //Cada vez menos arrancada linearmente   
        for (int i = 0; i < bolas.length; ++i) {
            bolas[i] = new Bola(var_arrancada/(2*(float(i)+1)));
        }
}

void formulaArrancada_B(){
    //Cada vez menos arrancada         
        for (int i = 0; i < bolas.length; ++i) {
            bolas[i] = new Bola(
                
                //Função Logarítimica [ 1 / exponencial ]

                    var_arrancada
                    /
                    pow(2,i)
                
                );
        }
}

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