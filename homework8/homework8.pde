float r = 40; // radius
float x;
float y;
float num = 40;
float multi;
float theta;
float noiseScale; // Perlin noise


void setup() {
  size(500, 500);
  background(#f9f9f9);
  //frameRate(500);
  
}

void draw() {
    float theta = multi*PI/num; // declaring theta
    multi += 0.5; // increasement
    
    theta += 3; // increasing theta
    r += 0.1; // increasing radius
    
    // setting up the x and y values of the spiral based on trigonometry with using theta
    x = r * cos(theta); 
    y = r * sin(theta);
    
    noStroke();
    fill(random(255), random(255), random(255));
    
    
    ellipse(x + width/2, y + width/2, noise(r) * 20, noise(r) * 20); // declaring the actual spiral visually with Perlin noise used for the fluctuating of the size
    
   
   
  }
