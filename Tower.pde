//A Tower is the player's main defense against the mobs.
//Towers are placed on the maps and then automatically
//act. There are 3 kinds of towers (but you can make more!)

//Gun Tower: These towers shoot bullets that fly across
//           the screen and do damage to mobs.

//AoE Tower: These towers place AoE_Rings that deal damage
//           to all mobs in the ring.

//Sniper Tower: These towers automatically target the first
//              mob no matter where they are on the scren.

class Tower {
  final int PLACING = 0;
  final int PLACED = 1;
  float x, y;
  int cooldown, threshold;
  int towerMode;
  Gif tower1;
  Tower(float _x, float _y, int c, int th) {

    x = _x;
    y = _y;
    cooldown = c;
    threshold = th;
    tower1 = new Gif("mob1/smallgif1(", ").gif", 112, 10, x, y, 100, 100);
    towerMode = PLACING;
  }

  void show() {

    fill(blue);
    stroke(black);
    strokeWeight(4);


    if (towerMode == PLACING) {
      tower1.x = mouseX;
      tower1.y = mouseY;
      if(mousePressed){
        
       towerMode = PLACED; 
      }
     




    // maybe need to change
  }
   tower1.show();
  }

  void act() {
    if (mobs.size()> 0) {
      cooldown++;
      if (cooldown == threshold) {
        cooldown= 0;
        bullets.add(new Bullet(x, y, 0, -20));//UP   // adds a new bullet at the tower's x and y values
        bullets.add(new Bullet(x, y, 0, 20));//DOWN
        bullets.add(new Bullet(x, y, -20, 0));//LEFT
        bullets.add(new Bullet(x, y, 20, 0));//RIGHT
      }
    }
  }
}
