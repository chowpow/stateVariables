int yourScore, computerScore, playerChoice;
String singlePlayerScore, singlePlayerInstructions;

void singlePlayerText() {
  singlePlayerScore = "Your score: 0. \n       opponent Score: 0. ";
  singlePlayerInstructions = "Instructions: 1 for rock, 2 for paper, 3 for scissors.";
  textSize(20);
  text(singlePlayerScore, 100, 50);
  text(singlePlayerInstructions, width / 2, height / 2);
}