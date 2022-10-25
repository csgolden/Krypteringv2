int cypher = 0;
String input = "";

void setup() {
  size(500, 500);
}

void draw() {
  background(255);
  fill(0);
  text(char(cypher), 40, 155);
}

void keyPressed() {
  // if (key == ' ');
  //println(int (key) +5);
  input = input+ str (key);
  println(input);
}
void mousePressed() {
  if (mousePressed && (mouseButton == LEFT)) {
    String Cypher = "";
    for (int index = 0; index< input.length(); index = index+1) {
      char temp = input.charAt(index);
      cypher = temp+5;
      print(char (cypher));
      Cypher = Cypher+ char (cypher);
    }
    String[] list = new String[2];
    list[0] = input;
    list[1] = Cypher;
    saveStrings("code.txt", list);
    println();
    input = "";
  } else if (mousePressed && (mouseButton == RIGHT)) {
    for (int index = 0; index< input.length(); index = index+1) {
      char temp = input.charAt(index);
      cypher = temp-5;
      print(char (cypher));
    }
  }
}
