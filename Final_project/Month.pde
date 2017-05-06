class Month {
  float x = 0;
  float y = 0;
  float monthSize = 200;

  Month() {
  }

  Month(float newX, float newY, float newSize) {
    x = newX;
    y = newY;
    monthSize = newSize;
  }

  void drawMonth() {
    stroke(255);
    strokeWeight(3);
    fill(0);
    rect(x, y, monthSize, monthSize);
    }
}