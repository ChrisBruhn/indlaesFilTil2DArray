// MODEL
class File {

  String name;
  int length;
  Bogstav[] bogstav; // gemmer alle bogstaver

  File(String n) {
    name = n;
    length=0;
  }

  Bogstav[] getBogstavListe() {
    return bogstav;
  }

  void readFile() {
    //Læs fil
    String[] lines = loadStrings("alfa.txt");
    length=lines.length; // gem længden til senere
    // lav et array af bogstaver
    bogstav = new Bogstav[length];
    for (int i = 0; i < length; i++) {
      //https://processing.org/reference/split_.html
      // split den enkelte linje op i felter. Vi har adskildt felter med tegnet komma
      String[] list = split(lines[i], ',');
      // split returnerer et array med felterne i dem ligger jeg over i min 2D array med det samme.
      bogstav[i] = new Bogstav(list[0], list[1]);
    }
  }

  void saveFile(String[] lines) {
    // gem filen
    saveStrings(name, lines);
  }

  String[] bogstavToString(Bogstav[] bogstav) {
    String result[] = new String[bogstav.length];
    for (int i=0; i<bogstav.length; i++) {
      result[i] = bogstav[i].getIdName();
    }
    return result;
  }


  void lavFil() {
    // Array med id og alle bogstaver
    Bogstav[] lines = new Bogstav[25];
    // opret hver enkelt linje, men jeg er ikke interesseret i at hvae nummer 0. Derfor starter jeg med 1. 28 gange = 28 bogstaver. 64+i er ASCII værdi for et bogtav
    for (int i =0; i<25; i++) {
      // lav objektet bogstav udfra i værdi
      lines[i]= new Bogstav(i);
    }
    // gem filen men lav bogstaver om til string
    file.saveFile(file.bogstavToString(lines));
  }
}
