String gameTitle, buttonOneText;
float buttonX, buttonOneY, buttonTwoX, buttonTwoY, buttonWidth, buttonHeight;
float buttonOneTop, buttonOneBottom, buttonLeftSide, buttonRightSide;

void gameText() {
  //game text of the menu screen

  gameTitle = "Rock Paper Scissors";
  buttonOneText = "Enter if you dare";
  
  fill(255, 0, 0);
  textSize(45);
  
  textAlign(CENTER);
  text(gameTitle, width / 2, (height / 2) * 0.5);
  
  fill(255);
  textSize(30);
  text(buttonOneText, width / 2, 360);
    
}

void displayButtonOne() {
  //drawing the button
  
  buttonWidth = 300;
  buttonHeight = 80;
  buttonX = (width / 2) - (buttonWidth / 2);
  buttonOneY = 310;
  
  buttonOneTop = buttonOneY;
  buttonOneBottom = buttonOneY + buttonHeight;
  buttonLeftSide = buttonX;
  buttonRightSide = buttonX + buttonWidth;
  
  if (mouseOverButtonOne()) {
    fill(255, 60, 80);
  } else {
    fill(255, 0, 0);
  }
  rect(buttonX, buttonOneY, buttonWidth, buttonHeight);
}

boolean mouseOverButtonOne() {
  
  return ((mouseX > buttonLeftSide) &&
  (mouseX < buttonRightSide) &&
  (mouseY > buttonOneTop) &&
  (mouseY < buttonOneBottom)); 
}

void mousePressed() {
  //if the button is pressed the game starts
  if (mouseOverButtonOne()) {
    background(200, 50, 50);
    state = 1;
  }
}

void keyPressed() {
  if (key == 'r') {
    state = 0;
    computerScore = 0;
  }
}