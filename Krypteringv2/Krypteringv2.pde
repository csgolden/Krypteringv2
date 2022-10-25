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
    for (int index = 0; index< input.length(); index = index+1) {
      char temp = input.charAt(index);
      cypher = temp+5;
      print(char (cypher));
    }
    String key = input;
String[] list = split(key,' '); 
saveStrings("code.txt",list);
    println();  
    input = "";
  } else if (mousePressed && (mouseButton == RIGHT)) {
  
  }
}
