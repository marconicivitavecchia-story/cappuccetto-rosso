Personaggio cappuccetto;

class Personaggio {
  PShape forma;
  // costruttore, chiamato quando viene usato "new"
  Personaggio() {
    forma = createShape(RECT, 0, 0, 30, 30);
    forma.setFill(color(255,0,0));    
  }
  
  void disegna(float x, float y) {
    shape(forma, x, y);
  }
}

PShape house;
int xCappuccetto = 150;

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
  cappuccetto.disegna(xCappuccetto, height*0.5);
  //
  
  // incremento la coordinata x di cappuccetto
  // solo se non è ancora nella casa della nonna
  if (xCappuccetto < width*0.8) {
    xCappuccetto = xCappuccetto + 5;
  }
}
