
//PROCESSO DO VOID SETUP, OCORRE SOMENTE 1x PRA ALOCAR MEMÓRIA. NÂO INTERFERE EM VOIDDRAW()

//Código Chamado dentro de void setup()
//Fórmulas de variação de aceleração para construtor de Bola() baseado na quantidade de bolas.

void formulaArrancada_Debug(){
    //Cada vez menos arrancada linearmente   
        for (int i = 0; i < bolas.length; ++i) {
            bolas[i] = new Bola(1/(2*(float(i)+1)));
        }
}


void formulaArrancada_C(){
    //Cada vez menos arrancada linearmente   
        for (int i = 0; i < bolas.length; ++i) {
            bolas[i] = new Bola( 

                            /*
                            gráficos interativos da modulação matemática
                            https://www.desmos.com/calculator/dh7ydwox51
                            
                            AS VARIAVEIS i e bolas.length SÃO INT, TEM QUE COLOCAR ELAS DENTRO DO float(int)
                            Senão os valores são calculados como 0

                            var_arrancada é um valor para alterar de 1 para baixo o valor máximo de arrancada
                            
                            Diferente dos outros, com esse a gente conseguiria ter o contole da arrancada mínima e máxima
                            
                            */
                    
                            (((1/(float(bolas.length)+1))*(-((float(i))+1)))+1)*var_arrancada
                                                
                            );

            //por alguma razão o calculo funciona quando separado em um arquivo isolado. 
            //no momento tá tudo dando zero aqui. fora tá dando os números certos do gráfico online.
            println((((1/(float(bolas.length)+1))*(-((float(i))+1)))+1)*var_arrancada);
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