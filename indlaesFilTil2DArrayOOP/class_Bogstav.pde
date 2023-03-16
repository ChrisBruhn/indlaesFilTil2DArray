class Bogstav {
  int id;
  String bogstav;

  Bogstav(int i) {
    id=i+1;
    bogstav=String.valueOf(char(97+i));
  }
  
  Bogstav(String i, String b) {
  id = Integer.parseInt(i);
  bogstav = b;
  
  }

  int getId() {
    return id;
  }

  String getName() {
    return bogstav;
  }
  
  String getIdName(){
    return String.valueOf(id)+","+bogstav;
  }
}
