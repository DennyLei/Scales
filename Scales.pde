void setup() {
  size(400, 600); 
  noLoop();
}
void draw() {
   background(255);

  int cols = 100;
  int rows = 100;
  int step = 20;
  
  int gridWidth = (cols - 1) * step;
  int gridHeight = (rows - 1) * step;
  
  int offsetX = (width - gridWidth) / 2;
  int offsetY = (height - gridHeight) / 2;

  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      scale(offsetX + j*step, offsetY + i*step);
    }
  }
}
void scale(int x, int y) {
  int sixseven = (int)(Math.random()*7);
  stroke(x+y, 0, 0);
  fill(0, 0, 150, 50+x+(int)(Math.random()*60));
  beginShape();
  vertex(415 - x + sixseven, 250 - y);
  bezierVertex(430 - x + sixseven, 340 - y, 470 - x+ sixseven , 340 - y, 485 - x +sixseven, 250 - y);
  vertex(415 - x + sixseven, 250 - y);
  endShape(CLOSE);
}



