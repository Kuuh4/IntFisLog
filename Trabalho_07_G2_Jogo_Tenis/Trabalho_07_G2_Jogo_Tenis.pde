


void setup(){

//size(500,500,P3D);
//size(800,800,P3D);
fullScreen(P3D);

noStroke();


rectMode(CENTER);
}

void draw(){
  
  background(128);
  //lights();
  
  //cameraCena_Jogo();
  pushCena_jogo(); 
  //pushCena_cima(); 
    
    chao();
    bola01();
    personagemA();
    personagemB();
    chao_meio();
    

  pop();


 
  
}
