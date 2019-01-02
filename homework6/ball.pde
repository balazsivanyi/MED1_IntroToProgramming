class Ball {
  
  //variables
  float ballX;
  float ballY;
  float size;
  float speedX;
  float speedY;

Ball (float temp_ballX, float temp_ballY, float temp_size, float temp_speedX, float temp_speedY) {
  ballX = temp_ballX;
  ballY = temp_ballY;
  size = temp_size;
  speedX = temp_speedX;
  speedY = temp_speedY;
 }

void display () {
  fill(#f9f9f9);
  ellipse(ballX, ballY, size, size);
 }

void movement () {
  ballX = ballX + speedX;
  ballY = ballY + speedY;
  
  if(ballX > width) {
    speedX = -speedX;
  }
  if(ballX < 0) {
    speedX = -speedX;
  }
   
  if (ballY < 0) {
    speedY = -speedY;
  }
 }
}
