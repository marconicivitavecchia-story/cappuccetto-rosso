Personaggio cappuccetto;

class Personaggio {
  PShape forma;
  // costruttore, chiamato quando viene usato "new"
  Personaggio(String filename) {
    forma = loadShape(filename);
    forma.setFill(color(255,0,0));

  }
  
  void disegna(float x, float y) {
    shape(forma, x, y);

  }
}

PShape house;
int xCappuccetto = 150;

void setup() {
  fullScreen(P3D); // usa tutto lo schermo
  
  cappuccetto = new Personaggio("cappuccetto.obj");
  
  house = createShape(RECT, 0, 0, 100, 100);
}

void draw() {
  background(#00FF00); // siamo nella foresta, lo sfondo è verde
  
  // accendiamo le luci per vedere gli oggetti in 3D
  lights();


  
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
