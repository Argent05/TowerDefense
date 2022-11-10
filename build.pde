//This function draws the BUILD screen

void build() {
  // flashingtext("BUILD MODE",width/2-100,0,white,200);
  fill(white);
  text("BUILD MODE", width/2-100, 100, 200);

  theMap();
  node();
  animateThing();
  createInterface2();
  buildButtonClicks();
}

//y coordinates, counter, gif >100





void flashingtext(String n, int x, int y, color c, int d) {  // color 1 color 2

  fill(c);


  if (counter > 30 ) {
    text(n, x, y, d);
  }
  if (counter  == 60) {
    counter = 0;
  }

  counter++;
}

void createInterface2() {

  strokeWeight(0);
  fill(0);
  rect(width-80, 0, 170, height*2);
  fill(green);
  play.show();

  fourshootButton.show();
}

void  buildButtonClicks() {
  //int i = 0;
  if (play.clicked ) {
    mode = PLAY;
  }
if(fourshootButton.clicked){
   towers.add(new Tower(0,0,20,30));
  }
  //if (fourshootButton.clicked){
  //  movetower1.show();



  //}
  
}
