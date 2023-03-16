//2D array til Alfabet
String[][] aflaListe = new String[25][2]; // 25 bogstaver, to felter til hvert bogstav


void setup() {
  size(800,100);
  fill(0);
  textSize(20);
  lavFil();
  aflaListe = laesFil();
  printTwoDArray(aflaListe);
}
void draw() {
}

void lavFil() {
  // Array med id og alle bogstaver
  String[] lines = new String[25];
  // opret hver enkelt linje, men jeg er ikke interesseret i at hvae nummer 0. Derfor starter jeg med 1. 28 gange = 28 bogstaver. 64+i er ASCII værdi for et bogtav
  for (int i =0; i<25; i++) {
    // her konstruerer jeg linjen id,bogstav
    lines[i]= String.valueOf(i+1)+","+char(65+i);
  }
  // gem filen
  saveStrings("alfa.txt", lines);
}


String[][] laesFil() {
  // jeg ved at der er 25 bogstaver og to felter til hvert bogstav
  //
  String[][] result = new String[25][2];


  // https://processing.org/reference/loadStrings_.html
  //Læs fil 
  String[] lines = loadStrings("alfa.txt");
  println("there are " + lines.length + " lines"); // skriver hvor mange linijer der er læst fra filen. Det skulle gerne være 25
  for (int i = 0; i < lines.length; i++) {
    println(lines[i]); // skriv hele linjen ud til consol inden vi har splittet den op

    //https://processing.org/reference/split_.html
    // split den enkelte linje op i felter. Vi har adskildt felter med tegnet komma
    String[] list = split(lines[i], ',');
    // split returnerer et array med felterne i dem ligger jeg over i min 2D array med det samme.
    for (int j=0; j<list.length; j++) {
      result[i][j] = list[j];
    }
  }

  return result;
}

// udskriv alle værdier i en 2D array med et nested loop
void printTwoDArray(String[][] liste) {
  // for hver række
  for (int i =0; i<liste.length; i++) {
    // for hver kolonne
    for (int j =0; j<liste[i].length; j++) {
      // udskriv værdien for den aktuelle celle
      text(liste[i][j],25+i*30,50+j*25);
    }
  }
}
