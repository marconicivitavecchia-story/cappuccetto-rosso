Personaggio cappuccetto;

class Personaggio {
  PShape forma;
  // costruttore, chiamato quando viene usato "new"
  Personaggio() {
    forma = createShape(RECT, 0, 0, 30, 30);
    forma.setFill(color(255,0,0));    
  }
}

PShape house;
int xCappuccetto = 450;

void setup() {
  fullScreen(); // usa tutto lo schermo
  
  cappuccetto = new Personaggio();
  
  house = createShape(RECT, 0, 0, 100, 100);
}

void draw() {
  background(#00FF00); // siamo nella foresta, lo sfondo è verde

  //disegniamo la casa a destra, a metà altezza dello schermo
  shape(house, width*0.8, height*0.5);

  //disegniamo cappuccetto a metà altezza dello schermo
  shape(cappuccetto, xCappuccetto, height*0.5);
  
  // incremento la coordinata x di cappuccetto
  // solo se non è ancora nella casa della nonna
  if (xCappuccetto < width*0.8) {
    //xCappuccetto = xCappuccetto + 5;
  }
}

//void export() {
//  if(frames < totalFrames) {
//    gifExport.setDelay(20);
//    gifExport.addFrame();
//    frames++;
//  } else {
//    gifExport.finish();
//    frames++;
//    println("gif saved");
//    exit();
//  }
//}
//PShape wolf;

//int x = 0;
//int xStep = 8;

//int xHouse;
//int wHouse = 100;

//void setupp() {
//  fullScreen();
//  xHouse = width * 4 / 5;
//  // House
//  fill(#FFFFFF);
//  house = createShape(RECT, xHouse, height/2, wHouse, 100);
//  // Cappuccetto rosso
//  fill(#FF0000);
//  cappuccetto = createShape(RECT, 0, 0, 30, 30);
  
//  wolf = createShape(ELLIPSE, 0, 0, 90, 70);
//  wolf.setFill(color(0));
//}

//boolean isCappuccettoInTheHouse(int xCappuccetto, int xStartHouse, int widthHouse) {
//  if ( (xCappuccetto >= xStartHouse) && (xCappuccetto <= xStartHouse+widthHouse) ) {
//    return true;
//  } else {
//    return false;
//  }

//  // note for advanced user: a more compact way to write this condition is:
//  // return (xCappuccetto >= xStartHouse) && (xCappuccetto <= xStartHouse+widthHouse);
//}
//void draw() {
//  background(#00FF00);

//  //draw house
//  shape(house);

//  pushMatrix();
//  translate(mouseX,mouseY);
//  shape(wolf);
//  popMatrix();
  
//  println(dist(mouseX,mouseY,x,height/2));
//  if (dist(mouseX,mouseY,x,height/2) > 50) {
//  // draw cappuccetto rosso
//  pushMatrix();
//  translate(x, height/2);
//  shape(cappuccetto);
//  if (isCappuccettoInTheHouse(x,xHouse,wHouse) == false) {
//    x = x + xStep;
//  }
//  popMatrix();
//  }
  
  
//}
