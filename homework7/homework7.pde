int num = 80;
int[] arrayX = new int[num];
int[] arrayY = new int[num];

int iPos;;
Rect myRect;

float rectX;
float rectY;
float rectW;
float rectH;

float r = random(0,255);
float g = random(0,255);
float b = random(0,255);


void setup() {
  size(1200, 900);
  noStroke();
  fill(r, g, b);
}

void draw() {
  background(#262626);
  myRect = new Rect(rectX, rectY, rectW, rectH);  
  myRect.display();
  
  iPos = (iPos + 1) % num; 
    
    for (int i = 0; i < num; i++) {                                    
      int pos = (iPos + i) % num; 
      float size = (num-i);
      rect(arrayX[pos], arrayY[pos], size, size);
    }
}
