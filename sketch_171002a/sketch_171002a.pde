//State variables assignment Shaochen Ma
//Unbeatable game of rock paper scissors
//Extra for experts: basic AI opponent
//Known issues: first turn is always counted as a tie, once the game reset it can't be played again

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
  if (key == 'r') {
    state = 0;
  }
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