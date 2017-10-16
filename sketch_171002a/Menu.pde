String gameTitle, buttonOneText, buttonTwoText;
float buttonX, buttonOneY, buttonTwoX, buttonTwoY, buttonWidth, buttonHeight;
float buttonOneTop, buttonOneBottom, buttonLeftSide, buttonRightSide;
float buttonTwoTop, buttonTwoBottom;

void gameText() {

  gameTitle = "Rock Paper Scissors";

  buttonOneText = "single player";
  buttonTwoText = "two player";
  
  fill(255, 0, 0);
  textSize(45);
  
  textAlign(CENTER);
  text(gameTitle, width / 2, (height / 2) * 0.5);
  
  fill(255);
  textSize(30);
  text(buttonOneText, width / 2, 360);
  text(buttonTwoText, width / 2, 460);
  
  
}

void displayButtonOne() {
  
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

void displayButtonTwo() {
  
  buttonWidth = 300;
  buttonHeight = 80;
  buttonX = (width / 2) - (buttonWidth / 2);
  buttonTwoY = 410;
  
  buttonTwoTop = buttonTwoY;
  buttonTwoBottom = buttonTwoY + buttonHeight;
  buttonLeftSide = buttonX;
  buttonRightSide = buttonX + buttonWidth;
  
  if (mouseOverButtonTwo()) {
    fill(255, 60, 80);
  } else {
    fill(255, 0, 0);
  }
  rect(buttonX, buttonTwoY, buttonWidth, buttonHeight); 
}

boolean mouseOverButtonOne() {
  
  return ((mouseX > buttonLeftSide) &&
  (mouseX < buttonRightSide) &&
  (mouseY > buttonOneTop) &&
  (mouseY < buttonOneBottom)); 
}

boolean mouseOverButtonTwo() {
  
  return ((mouseX > buttonLeftSide) &&
  (mouseX < buttonRightSide) &&
  (mouseY > buttonTwoTop) &&
  (mouseY < buttonTwoBottom));
}
  
void mousePressed() {
  
  if (mouseOverButtonOne()) {
    background(200, 50, 50);
    state = 1;
  }
  
  if (mouseOverButtonTwo()) {
    background(0, 255, 0);
    state = 2;
  }
}

//void keyPressed() {
//  if (key == 'r' || key == 'R') {
//    state = 0;
//  }
//}