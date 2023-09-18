int startX = 150; 
int startY = 0;
int endX = 150; 
int endY = 0; 

void setup() {
  size(300,300);
  background(0,0,0); 
  strokeWeight(3); 
}

void draw() {
  noStroke();
  fill(150,150,150,9);
  ellipse(150,20,130,70);
  ellipse(230,20,70,40);
  ellipse(80,20,70,40);
}

void mousePressed() {
  stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  while(endY < (int)(Math.random()*60+200)) {
    endY = startY + (int)(Math.random()*9);
    endX = startX + (int)(Math.random()*40-20);
    line(startX,startY,endX,endY);
    startY = endY;
    startX = endX;
  }
  startX = 150; 
  startY = 0;
  endX = 150; 
  endY = 0; 
}
