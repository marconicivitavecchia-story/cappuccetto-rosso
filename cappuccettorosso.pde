int x = 0;
int xStep = width/30;

void setup() {
  fullScreen();
}

void draw() {
  background(#00FF00);
  
  //draw house
  fill(#FFFFFF);
  rect(width-150, height/2, 100, 100);

  // draw cappuccetto rosso
  fill(#FF0000);
  rect(x, height/2, 30, 30);
  x = x+xStep;

  
}
