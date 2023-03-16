// CONTROLLER //<>//

// lav objektet fil
File file = new File("alfa.txt");

void setup() {
  size(800,100);
  fill(0);
  textSize(18);
  
  file.lavFil();
  file.readFile();
}
void draw() {
  background(220);
  printBogstavArray(file.getBogstavListe());
}




// VIEW

// udskriv alle værdier 
void printBogstavArray(Bogstav[] liste) {
  // for hver række
  for (int i =0; i<liste.length; i++) {
    // for hver kolonne
    text(liste[i].getId(), 25+i*30, 50);
    text(liste[i].getName(), 25+i*30, 70);
  }
}
