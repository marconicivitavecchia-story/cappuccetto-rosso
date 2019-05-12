class Pianta {
  PShape forma;
  float x, y;
  float dimensione;

  Pianta(String piantaObj) {
    // assegniamo la dimensione in modo casuale
    dimensione = random(30, 80);
    // carichiamo il modello della nostra pianta, passandogli come parametro il file con il modello
    forma = loadShape(piantaObj);
    // scaliamo l'oggetto
    forma.scale(dimensione);
    // ruotiamolo lungo l'asse X per rispettare le convenzioni di Processing
    forma.rotateX(radians(180));
    // ruotiamolo casualmente lungo l'asse verticale, per dare un po' di vivacità alla foresta
    forma.rotateY(radians(random(-45,45)));

    // opzionale: coloriamo la pianta di verde. Utile se il modello non è già colorato di suo
    forma.setFill(#28C61E);

    // assegniamo una posizione casuale nello schermo
    x = random(0, width);
    y = random(0, height);
    // spostiamo la pianta nella nuova posizione
    forma.translate(x,y);
  }


  void semina() {
    // disegniamo la pianta
    shape(forma);
  }
}
