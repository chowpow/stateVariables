int state;


void setup() {
  size(800, 800);
  state = 0;
}

void draw() {
  
  if (state == 0) {
    background(0);
    displayButtonOne();
    displayButtonTwo();
    gameText();
  }
  
  if (state == 1) {
    background(255, 0, 0);
    singlePlayerText();
  }
}