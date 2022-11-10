//This function draws the INTRO screen.

void intro() {
    introAnimation.show();
    start.show();
    
    if(start.clicked){
     mode = PLAY;
    }
  textFont(basic);
    //while
    fill(255);
    textSize(100);
    text("Tower Defense",width/2,height/2,30);
}
