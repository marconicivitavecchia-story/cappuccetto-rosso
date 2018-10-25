int x = 0;
int xStep = 8;

void setup() {
  fullScreen();
}

boolean isCappuccettoInTheHouse(int xCappuccetto, int xStartHouse, int widthHouse) {
  if ( (xCappuccetto >= xStartHouse) && (xCappuccetto <= xStartHouse+widthHouse) ) {
    return true;
  } else {
    return false;
  }
  
  // note for advanced user: a more compact way to write this condition is:
  // return (xCappuccetto >= xStartHouse) && (xCappuccetto <= xStartHouse+widthHouse);
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
