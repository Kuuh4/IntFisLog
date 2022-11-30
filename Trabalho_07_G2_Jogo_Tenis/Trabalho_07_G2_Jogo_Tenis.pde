


void setup(){

size(500,500,P3D);
//fullScreen(P3D);

noStroke();


rectMode(CENTER);
}

void draw(){
  
  background(128);
  //lights();
  

  pushCena_jogo(); 
  //pushCena_cima(); 

    
    chao();
    bola01();
    chao_meio();
    

  pop();


 
  
}
