int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;
void setup()
{
  size(300, 300);
  strokeWeight(3);
  background(0);
  noStroke();
  fill(255);
  rect(0,120,100,60);
  ellipse(150,150,200,200);
}
void draw()
{
  stroke((int)(Math.random()*11)+237, (int)(Math.random()*255), (int)(Math.random()*255));
  while (endX <= 300) {
    endX = startX + (int)(Math.random()*10);
    endY = startY + ((int)(Math.random()*19))-9;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
}
void mousePressed()
{
  startX = 0;
  startY = 150;
  endX = 0;
  endY = 150;
}
