//Tower Defense Game
//YOUR NAME GOES HERE
//Programming 12

// ================ GLOBAL VARIABLES =================

final int INTRO    = 0;  
final int PLAY     = 1;
final int BUILD    = 2;
final int GAMEOVER = 3;
int mode;

//Pallette
color white = #ffffff;
color black = #000000;
color pink = #ff595e;
color orange = #ffca3a;
color green = #8ac926;
color blue = #1982c4;
color purple = #6a4c93; 



//Mouse & Keyboard interaction variables
boolean mouseReleased;
boolean wasPressed;

//Buttons
Button start;

//Collections of objects

Node[] nodes;

//Images and Gifs
Gif introAnimation;
//Fonts
PFont basic;

// ===================== SETUP =========================

void setup() {
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  size(1000, 1000);
  initializeModes();
  initializeVariables();
  makeButtons();
  makeNodes();
}

void initializeModes() {
  //set up the default mode for things
  rectMode(CENTER);
  imageMode(CENTER);
  textAlign(CENTER, CENTER);
  mode = PLAY;
  //bef,after,frames,speed
  introAnimation = new Gif("introgif2/frame_", "_delay-0.03s.gif",30,2,width/2,height/2,width,height);
  
}

void initializeVariables() {
  //Load Images & Gifs

  //Load Fonts
basic = createFont("basicFont/Baby Doll.otf",24);
  //Create Collections of Objects
}

void makeButtons() {
  //INTRO - Start
  start = new Button("START", width/2, 3*height/4, 200, 100, white, black);

  //PLAY - Next Wave, To Build Mode

  //BUILD - To play mode, Buy Sniper, Buy Gun, Buy AoE

  //GAMEOVER - Reset
}

void makeNodes() {
  //Plot the nodes on the map
  nodes = new Node[6];
  nodes[0] = new Node(250,430,0,-1);
  nodes[1] = new Node(250,230,1,0);
  nodes[2] = new Node(500,230,0,1);
  nodes[3] = new Node(500,645,-1,0);
  nodes[4] = new Node(300,645,0,-1);
  nodes[5] = new Node(300,451,1,0);
  
  
  
}


// ===================== DRAW ===========================

void draw() {
  
  
  
  
  click();
  if (mode == INTRO) {
    intro();
  } else if (mode == PLAY) {
    play();
  } else if (mode == BUILD) {
    build();
  } else if (mode == GAMEOVER) {
    gameOver();
  }
}
