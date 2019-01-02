class Box {
  
  //variables
  float boxX;
  float boxY;
  float boxA;
  boolean b = true;
  float counter = 0;
  String points;
  float textX = 50;
  float textY = 50;
  
  
  
Box (float temp_boxX, float temp_boxY, float temp_boxA) {
   boxX = temp_boxX;
   boxY = temp_boxY;
   boxA = temp_boxA;
}

void display() {
  noStroke();
  fill(#f9f9f9);
  rect(boxX, boxY, boxA, boxA);
}


void hit() {
  noStroke();
  noFill();
  ellipse(boxX, boxY, boxA, boxA);
  if (dist(boxX, boxY, myBall.ballX, myBall.ballY) < (boxA + myBall.size)) {
    myBall.speedY = -myBall.speedY;
  }
 }
 
void removing() {
  if (dist(boxX, boxY, myBall.ballX, myBall.ballY) < (boxA + myBall.size)) {
    b = true;
  } else {
    b = false;
  } 
  if (b == true) {
    boxX = 0;
    boxY = 0;
    boxA = 0;
    counter = counter + 1;
  } else {
  }
 }
 
void counter() {
  points = points + counter;
  
  text(points, textX, textY);
  
}
}
