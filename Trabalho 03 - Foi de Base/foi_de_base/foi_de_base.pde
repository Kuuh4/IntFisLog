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

//declaração das imagens e fontes
PImage fundo; PImage mine;
PFont minecraft_regular;

void setup() {
  size(1280, 720);
  frameRate(5);
  //carregar imagens e fontes
    fundo = loadImage("fundo1.png");
    mine = loadImage("mine.png");
    minecraft_regular = createFont("MinecraftRegular-Bmg3.otf",32);
  //linhas de prompt teste inicial
    println("rodando...");
    println("Teste:");
    println(frases[int(random(80))]);
    println("pronto");
  //configurando texto
    textSize(36);
    textAlign(CENTER);
    textFont(minecraft_regular);
}

void draw(){
    background(127);
    //Desenhar Imagens
        image(fundo,0,0,1280,720);
        image(mine,0,0,1280,720);
    
    text(frases[frase_atual],640,291); 
    
}

void mousePressed() {
  int frase_atual = int(random(80));
  println(frase_atual);
}

