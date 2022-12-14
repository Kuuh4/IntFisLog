/*
Feito no Processing 4

https://github.com/Kuuh4/IntFisLog
Copyright Derick Faria 2022.
*/


//Background
int CorFundo;
boolean CorFundoSubindo;
//Ball
int CorBase;

void setup() {
  size(500, 500);
  frameRate(60);
  //Background
  {
    CorFundo=(0);
    CorFundoSubindo=true;
  }
  //Ball
  {
    CorBase=0;
  }
}


void draw() {

  //Background
  {
    println(CorFundo, CorBase);
    background(CorFundo);

    if (CorFundoSubindo==true) {
      CorFundo++;
    } else {
      CorFundo--;
    }

    if (CorFundo>254 || CorFundo<1) {
      if (CorFundoSubindo==true) {
        CorFundoSubindo=false;
      } else {
        CorFundoSubindo=true;
      };
    }
  }

  //Ball
  {
    CorBase=-(CorFundo-255);


    noStroke();
    fill(CorFundo, 0, 0);
    ellipse(175, 250, 50, 50);

    fill(255, 0, 0);
    ellipse(250, 250, 50, 50);

    fill(CorBase, 0, 0);
    ellipse(325, 250, 50, 50);
  }
}


