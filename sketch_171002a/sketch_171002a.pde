//State variables assignment Shaochen Ma
//Unbeatable game of rock paper scissors
//Extra for experts: basic AI opponent

int state;

void setup() {
  //setting up variables and images
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
  //draws the game screen depending on the state
  if (state == 0) {
    background(100, 200, 50);
    displayButtonOne();
    gameText();
  }
  if (state == 1) {
    singlePlayerText();
  }
  if (state == 2) {
    endScreenText();
  }
}