void drawtri(float x1, float y1, float x2, float y2, float x3, float y3) { // this function creates the triangle
  fill(0);
  triangle(x1, y1, x2, y2, x3, y3);
}

void drawSier(float x1, float y1, float x2, float y2, float x3, float y3, int depth, int max) {
  if (depth == max) { // When base case is reached, code will run the drawtri function
    drawtri(x1, y1, x2, y2, x3, y3);
  } else {
    // finds the midpoints 
    float h1 = (x1+x2)/2;
    float w1 = (y1+y2)/2;
    float h2 = (x2+x3)/2;
    float w2 = (y2+y3)/2;
    float h3 = (x3+x1)/2;
    float w3 = (y3+y1)/2;

    drawSier(x1, y1, h1, w1, h3, w3, depth + 1, max);
    drawSier(h1, w1, x2, y2, h2, w2, depth + 1, max);
    drawSier(h3, w3, h2, w2, x3, y3, depth + 1, max);
  }
}
