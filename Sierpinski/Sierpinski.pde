int l;
float x;
float y;



void setup() {
  size(600, 600);
  String[] allInfo = loadStrings("info.txt"); // this piece of code reas the fil info.txt to find the values of l, x and y
  for (int i=0; i < allInfo.length; i++) {
    String infoLine[] = allInfo[i].split(" ");

    String variable = infoLine[0];
    int value = int(infoLine[2]);

    if (variable.equals("l")) {
      l = value;
    } else if (variable.equals("x")) {
      x = value;
    } else if (variable.equals("y")) {
      y = value;
    }
  }
  println("l =", l, ",", "x =", x, ",", "y =", y);
}

void draw() {
  background(255);
  drawSier(x, y, x + l/2, y - sin(PI/3) * l, x + l, y, 1, int(map(mouseX, 0, width, 1, 10)));
} 
