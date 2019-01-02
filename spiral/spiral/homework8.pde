float r = 40;
float x;
float y;
float num = 40;
float multi;
float theta;
float noiseScale;


void setup() {
  size(500, 500);
  background(#f9f9f9);
  //frameRate(500);
  
}

void draw() {
    float theta = multi*PI/num;
    multi += 0.5;
    
    theta += 3;
    r += 0.1;
  
    x = r * cos(theta);
    y = r * sin(theta);
    
    noStroke();
    fill(random(255), random(255), random(255));
    
    
    ellipse(x + width/2, y + width/2, noise(r) * 20, noise(r) * 20);
    
   
   
  }
