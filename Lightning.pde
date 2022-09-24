int startX = 250+(int)(Math.random()*80)-40;
int startY = 100;
int endX = (int)(Math.random()*500);
int endY = 100;

void setup()
{
  size(500, 500);
  strokeWeight(8);
  background(20, 100, 20);
}
void draw()
{
  noFill();
  stroke((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)); //rainbow
  if (endY<535) {
    endY = startY + (int)(Math.random()*10);
    endX = startX + (int)(Math.random()*10)-5;
    line(startX, startY, endX, endY); //worm
    startX = endX;
    startY = endY;

    // worm gets cut off
    noStroke();
    fill(20, 100, 20);
    rect (0, 0, 500, endY-30);

    //bucket
    fill(240, 0, 0);
    ellipse(250, 25, 80, 30);
    triangle(195, 100, 210, 25, 210, 100);
    triangle(305, 100, 290, 25, 290, 100);
    rect(210, 25, 80, 75);
    fill(255, 0, 0);
    ellipse (250, 95, 120, 70);

    //dirt
    fill(101, 67, 33);
    ellipse (250, 100, 100, 50);
  }
}
void mousePressed()
{
  noStroke();
  fill(20, 100, 20);
  rect(0, 130, 500, 370);
  startX = 250+(int)(Math.random()*80)-40;
  startY = 100;
  endX = (int)(Math.random()*500);
  endY = 100;
}
