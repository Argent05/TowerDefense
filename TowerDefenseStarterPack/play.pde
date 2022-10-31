//This function draws the PLAY screen

void play() {  // make a gif here

fill(green);
rect(2,20,width*2,height*2);

stroke(orange);
strokeWeight(40);
line(0,430,250,430);
line(250,430,250,230);
line(250,230,500,230);
line(500,230,500,645);
line(500,645,300,645);
line(300,645,300,451);
line(300,451,width-150,451);

 nodes[2].show();

strokeWeight(0);
fill(0);
rect(width-80,0,170,height*2);

textFont(basic);
  textSize(20);
  text(mouseX + "," + mouseY,mouseX,mouseY -20);
  

}
