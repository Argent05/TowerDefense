//This function draws the INTRO screen.

void intro() {
    introAnimation.show();
    start.show();
    
    if(start.clicked){
     mode = PLAY;
    }
    
    int c = 0;
    //while
    fill(255);
    text("Tower Defense",width/2,height/2,30);
}
