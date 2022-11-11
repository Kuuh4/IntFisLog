void formulaAccel_A(){
    for (int i = (bolas.length-1); i > 1 ; --i) {
    bolas[i] = new Bola((1/(sq(varAccel)))/(i+1));
    }
}

void formulaAccel_B(){
    for (int i = 0; i < bolas.length; ++i) {
    bolas[i] = new Bola((1/(sq(varAccel)))/(i+1));
    }
}