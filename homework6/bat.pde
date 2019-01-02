class Bat {
  
  //variables
  float batX;
  float batY;
  float batW;
  float batH;
  
Bat (float temp_batX, float temp_batY, float temp_batW, float temp_batH) {
  batX = temp_batX;
  batY = temp_batY;
  batW = temp_batW;
  batH = temp_batH;
 }

void display () {
  fill(#f9f9f9);
  rect(batX, batY, batW, batH);
 }

void bounce () {
  if (((myBall.ballX > batX) && (myBall.ballX + myBall.size < batX + batW) && (myBall.ballY + myBall.size > batY))) {
    myBall.speedY = - myBall.speedY;
  }
}


void keyPressed() {
  if (key == CODED); {
    if (keyCode == LEFT) {
    batX = batX-10;
  } else if (keyCode==RIGHT) {
  batX = batX+10;
  }
 }  
}
}
