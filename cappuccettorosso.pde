int x = 0;
int xStep = width/30;

void setup() {
  fullScreen();
}

boolean isCapInHouse(int x, int houseStart, int houseWidth) {
  if ( (x > houseStart) && (x < houseStart+houseWidth) ) {
    return true;
  } else {
    return false;
  }
}

void draw() {
  background(#00FF00);
  
  //draw house
  fill(#FFFFFF);
  rect(width-150, height/2, 100, 100);

  // draw cappuccetto rosso
  fill(#FF0000);
  rect(x, height/2, 30, 30);
  
  if (isCapInHouse(x, width-150, 100)) {
    fill(#000000);
    textSize(30);
    text("Che bocca grande che hai!", width/2,50);
  } else {
    x = x+xStep;
  }

  
}
