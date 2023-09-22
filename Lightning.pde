int startX = 150; 
int startY = 0;
int endX = 150; 
int endY = 0; 
int redColor = (int)(Math.random()*256);
int greenColor = (int)(Math.random()*256);
int blueColor = (int)(Math.random()*256);
  
void setup() {
  size(300,300);
  background(0,0,0); 
  strokeWeight(3); 
  //frameRate(18);
}

void draw() {
  noStroke();
  fill(150,150,150,9);
  ellipse(150,20,130,70);
  ellipse(230,20,70,40);
  ellipse(80,20,70,40);
  //background(0,0,0,10);
  if(endY < 200) {
    stroke(redColor,greenColor,blueColor);
    endY = startY + (int)(Math.random()*9);
    endX = startX + (int)(Math.random()*40-20);
    line(startX,startY,endX,endY);
    startY = endY;
    startX = endX;
  }
}

void mouseClicked() {
  redColor = (int)(Math.random()*256);
  greenColor = (int)(Math.random()*256);
  blueColor = (int)(Math.random()*256);
  startX = 150; 
  startY = 0;
  endX = 150; 
  endY = 0; 
}
