Ball myBall;
Bat myBat;
Box[]boxes = new Box [15];


void setup() {
  size(1600,900);
  background(#262626);
  
  float _ballX = width/2;
  float _ballY = height/2;
  float _size = 50;
  float _speedX = 5;
  float _speedY = 5;
  
  myBall = new Ball(_ballX, _ballY, _size, _speedX, _speedY);
  
  float _batX = 700;
  float _batY = 850;
  float _batW = 200;
  float _batH = 50;
  
  myBat = new Bat (_batX, _batY, _batW, _batH);
  
  float _boxX = 70;
  float _boxY = 70;
  float _boxA = 60;
  
  for (int i = 0; i < boxes.length; i++) {
    boxes[i] = new Box (_boxX, _boxY, _boxA);
    boxes[i].boxX += 100*i; 

  }
  
}

void draw(){
  background(#262626);
  
  myBall.display();
  myBall.movement();

  myBat.display();
  myBat.bounce();
  myBat.keyPressed();
 
  row();
  
  
  
  
  
}

void row() {
 for (int i = 0; i < boxes.length; i++) {
    boxes[i].display();
    boxes[i].hit();
    boxes[i].removing();
    boxes[i].counter();
  }
  
}
