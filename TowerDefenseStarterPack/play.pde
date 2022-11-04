//This function draws the PLAY screen

void play() {  // make a gif here



  strokeWeight(0);
  fill(0);
  rect(width-80, 0, 170, height*2);

  textFont(basic);
  textSize(20);
  text(mouseX + "," + mouseY, mouseX, mouseY -20);
  theMap();
  node();
  animateThing(); // this has to be placed inside play() / called as if you simply do void,
  // it is just created but not called and will therefore not show up. play() is called in
  // the main tab so it shows up and everything else that is called within play shows up
  createInterface();
  buttonClicks();
}

void  buttonClicks() {
  int i = 0;
  if (nextwave.clicked && mobs.size() ==0) {
    counter++;
    while ( i< counter) {
      mobs.add(new Mob(0 - i*50, 430, 1, 0));
      i++;
    }
  }
}

void node() {

  strokeWeight(4);
  stroke(pink);
  int i = 0;
  while (i< 6) {
    nodes[i].show();
    i++;
  }
}


void theMap() {
  fill(green);
  rect(2, 20, width*2, height*2);

  stroke(orange);
  strokeWeight(40);
  line(0, 430, 250, 430);
  line(250, 430, 250, 230);
  line(250, 230, 500, 230);
  line(500, 230, 500, 645);
  line(500, 645, 300, 645);
  line(300, 645, 300, 451);
  line(300, 451, width-150, 451);
}

void createInterface() {

  strokeWeight(0);
  fill(0);
  rect(width-80, 0, 170, height*2);
  fill(green);
  nextwave.show();
  fill(white);
  text("Next Wave" + counter, width-85, 50, 30);
}


void animateThing() {


  for (int i=0; i< mobs.size(); ) {   // .size is checking the size of the array list
    Mob myMob = mobs.get(i);
    myMob.act(); //this will return a mob at index i
    myMob.show();
    if (myMob.hp <= 0) {
      mobs.remove(i);
    } else { // you put the i++ in the else because everytime a array resizes, it renumbers itself
      // 6 becomes 5. so if you i++, you'll miss 5
      i++;
    }
    
    
  }

  for (int i = 0; i < towers.size(); i++) {
    Tower myTower = towers.get(i);
    myTower.act();
    myTower.show();
  }

  for (int i = 0; i < bullets.size(); ) {
    Bullet myBullet = bullets.get(i);
    myBullet.act();
    myBullet.show();

    if (myBullet.bhp <=0) {    // i dont understand this array loop process... what if the second bullet's hp =0
      // and the array "i" is still on 0? unles it is continously being looped extremely fast
      bullets.remove(i);
    } else {
      i++;
    }
  }
}
