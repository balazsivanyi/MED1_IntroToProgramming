class Rect {
  //variables
  float rectX;
  float rectY;
  float rectW;
  float rectH;

  Rect(float temp_rectX, float temp_rectY, float temp_rectW, float temp_rectH) {
    rectX = temp_rectX;
    rectY = temp_rectY;
    rectH = temp_rectW;
    rectW = temp_rectH;
  }

  void display() {
    arrayX[iPos] = mouseX;
    arrayY[iPos] = mouseY;
  }
}
