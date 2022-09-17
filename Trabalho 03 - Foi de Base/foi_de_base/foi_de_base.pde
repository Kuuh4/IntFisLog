//lista de frases
String[] frases = {
  "(fez-se/está) Ausente",
  "(foi) Kickado",
  "A porta bateu onde o sol não bate",
  "Afofou o pinus",
  "Apareceu na montagem de céu.",
  "Avançou a smoke",
  "Baixou a ponta",
  "Bateu a moleira",
  "Bateu as bota",
  "Bateu as botas",
  "Beijou o sapo",
  "Capotou o Corsa",
  "Comeu a semente da melancia",
  "Comeu capim pela raiz",
  "Comeu da fruta proibida",
  "Comeu pastel dog",
  "Conheceu o pirulito",
  "Contratado como figurino em capa de gótico",
  "Deitou e não levantou mais",
  "Desceu o taboagua",
  "Desenozou as orelha do sansão",
  "Desligou a JBL (ou somente o \"tuguduu\" dela desligando)",
  "Desligou o firewall",
  "Deu o peido mestre",
  "Deu o último suspiro",
  "Deu tela azul",
  "Elizabeth empacotou",
  "Embarcou pra terra do nunca",
  "Empacotou",
  "Encarecou o pneu",
  "Engatou o marea",
  "Engoliu o chiclete",
  "Entrou pro débito automático",
  "Errou a alavanca da yzma",
  "Errou a zhonya",
  "Esqueceu o juggernog",
  "Expirou o LTS",
  "Fechou o client",
  "Foi conhecer deus pessoalmente",
  "Foi de Arrasta pra Cima",
  "Foi de Backyardigans",
  "Foi de base",
  "Foi de Comes e Bebes",
  "Foi de Drake&Josh",
  "Foi de Elizabete",
  "Foi de Gorbachev",
  "Foi de iCarly",
  "Foi de Jackson's five",
  "Foi dessa pra uma best",
  "Foi levado pra fazenda",
  "Foi pra pelotas",
  "Foi pra terra dos pé junto",
  "Foi pro outro lado",
  "Foi pro Vasco",
  "Fumou a diamba vencida",
  "Gelou os mindinho",
  "Inaugurou um bunker",
  "Levou ban",
  "Mastigou o Dorflex",
  "Misturou leite com manga",
  "Olavou",
  "Passou dessa pra melhor",
  "Perdeu as botas",
  "Perdeu os item",
  "Pretebrancou a tela",
  "Quebrou o tabu",
  "Seguiu a filosofia do mamute",
  "Seguiu o fio",
  "Sentiu o que é bom pra tosse",
  "Teve o CPF cancelado",
  "Tocou o registro sem chinelo",
  "Tomou o casco azul",
  "Tomou um tapa de Yan Wang",
  "Vascou",
  "Vestiu o pijama de madeira",
  "Virou legacy",
  "Virou presunto",
  "Virou promotor do capeta",
  "Viu com quantos paus se faz uma canoa",
  "Voltou pro lobby",
  "Wipou"
};

//frase da vez
int frase_atual;
boolean faz_uma_vez = false;

//declaração das imagens e fontes
PImage fundo; PImage mine;
PFont minecraft_regular;
PFont minecraft_titulo;

void setup() {
  size(1280, 720);
  frameRate(60);
  //carregar imagens e fontes
    fundo = loadImage("fundo1.png");
    mine = loadImage("mine.png");
    minecraft_regular = createFont("Minecraftia-Regular.ttf",24);
    minecraft_titulo = createFont("Minecraftia-Regular.ttf",42);
  //linhas de prompt teste inicial
    println("rodando...");
    println("Teste:");
    println(frases[int(random(80))]);
    println("pronto");
  //configurando texto
    textAlign(CENTER);
    textFont(minecraft_regular);
  //Config Assets
    rectMode(CENTER);
}

void draw(){

    //Desenhar Imagens
        image(fundo,0,0,1280,720);
        
    
    //Interface do Mine
      //Sobreposição vermelha
        noStroke();
        fill(#FF0005,100);
        rect(640,360,1280,720);
        
      //botões mine
      image(mine,0,0,1280,720);
      fill(2,220);
      rect(640,333,28,3);
      rect(640,333,3,28);
      fill(2);
      rect(640,333,28,1);
      rect(640,333,1,28);
            
    
    textFont(minecraft_titulo);
        fill(3,255);
        text("Você morreu!",645,204);
        fill(255);
        text("Você morreu!",640,198);
        
        
    textFont(minecraft_regular);
        
     //botões   
        fill(250);
        text("Renascer",640,427);
        text("Fechar",640,504);
    
    
    
    
    //Draw Text [Um dos dois por vez]
      //debug por meio do mouseX
        //fill(5,255);
        //text(frases[mouseX/16],643,307);
        //fill(255,247,15);
        //text(frases[mouseX/16],640,303);
      
      //Frase por variavel [int frase_atual], alterada por clique.
        fill(5,255);
        text(frases[frase_atual],644,294);
        fill(255,247,15);
        text(frases[frase_atual],640,290);
                
    //Switch por clique para trocar a frase [void draw] [Desativar um dos dois]
        /*
        if(mousePressed==true && faz_uma_vez==false){
          frase_atual = int(random(80));
          faz_uma_vez=true;
        }
        if(mousePressed==false){
        faz_uma_vez=false;
        }
        */
}


//Switch por clique para trocar a frase [void mousePressed] [Desativar um dos dois]
void mousePressed() {
  //clickar no botão & alterar o número da array
  if(mouseX>315&&mouseX<965&&mouseY>372&&mouseY<434){
  frase_atual = int(random(80));
  println(frase_atual);
  }
  
  //clickar no botão & fechar o programa
  if(mouseX>315&&mouseX<965&&mouseY>450&&mouseY<512){
  exit();
  }
  
  
}