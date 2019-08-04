final int A = 2323, B = 2111;

final int GRID_SIZE = 1;
final int GRID_WIDTH = 1600/GRID_SIZE;
final int GRID_HEIGHT = 900/GRID_SIZE;

void settings() {
  size(GRID_WIDTH*GRID_SIZE, GRID_HEIGHT*GRID_SIZE);
}


void setup() {
  stroke(0);
  fill(0);
  background(0xee, 0xff);
}

void draw() {

  int i = 0, j = 0, y = 0;
  while (j*B < GRID_WIDTH*GRID_HEIGHT) {
    while (y < GRID_WIDTH*GRID_HEIGHT) {
      y = i * A + j * B;
      drawNumber(y);
      i++;
    }
    i = 0;
    j++;
    y = i * A + j * B;
  }
  stroke(255,0,0);
  drawNumber(A*B);
  noLoop();
  print("done!");
}

void drawNumber(int n) {
    rect(GRID_SIZE*(n % GRID_WIDTH), GRID_SIZE*(n / GRID_WIDTH), GRID_SIZE, GRID_SIZE);
}
