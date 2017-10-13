int state;


void setup() {
  size(800, 800);
  state = 0;
  
  imageMode(CENTER);
  
  rock = loadImage("rock.png");
  paper = loadImage("paper.png");
  scissors = loadImage("scissors.png");
}

void draw() {
  
  if (state == 0) {
    background(0);
    displayButtonOne();
    displayButtonTwo();
    gameText();
  }
  
  if (state == 1) {
    singlePlayerText();
  }
}