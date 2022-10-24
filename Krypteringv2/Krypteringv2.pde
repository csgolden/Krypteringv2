int cypher = 0;
void setup() {
size(500, 500);
}

void draw() {
  background(255);
  fill(0);
   text(char(cypher), 40, 155);
  
}

void keyPressed() {
 if (key == ' ');
 print(int (key) +5);
 cypher = key+5;
}
