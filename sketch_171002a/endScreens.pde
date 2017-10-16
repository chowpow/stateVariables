String endScreen, rToMenu;

void endScreenText() {
  //text of the end screen
  background(0);
  fill(255);
  textSize(25);
  endScreen = "You Lost";
  rToMenu = "Press r to go back to the menu";
  text(endScreen, width / 2, height / 2);
  text(rToMenu, width / 2, 600);
}