int state;


void setup() {
  size(800, 800);
  state = 0;
  
  imageMode(CENTER);
  
  rock = loadImage("rock.png");
  paper = loadImage("paper.png");
  scissors = loadImage("scissors.png");
  
  rockScale = 0.05;
  papSciScale = 0.2;
  
  rockOffset = rock.width * rockScale;
  papSciOffset = paper.width * papSciScale;
}

void draw() {
  
  if (state == 0) {
    background(100, 200, 50);
    displayButtonOne();
    displayButtonTwo();
    gameText();
  }
  
  if (state == 1) {
    singlePlayerText();
  }
  
  
}