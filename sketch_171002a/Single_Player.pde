PImage rock, paper, scissors; //<>//
int playerSelection, result, playerScore, computerScore;
float rockScale, papSciScale, rockOffset, papSciOffset;
String singlePlayerScore, singlePlayerInstructions;

void singlePlayerText() {
  //text for the game
  singlePlayerInstructions = "Instructions: 1 for rock, \n   2 for paper, 3 for scissors.";
  textSize(20);
  text(singlePlayerInstructions, 150, 650);
}

void keyReleased() {
  result = decideWinner(playerSelection, computerChoice());

  //the player plays, 1 for rock 2 for paper 3 for scissors
  background(200, 50, 50);
  if (key == '1') {
    drawRockPlayerOne();
    playerSelection = 1;
  } else if (key == '2') {
    drawPaperPlayerOne();
    playerSelection = 2;
  } else if (key == '3') {
    drawScissorsPlayerOne();
    playerSelection = 3;
  }

  computerTurn();
  resultOfTurn();

  //if the computer scores 5 the game ends
  if (computerScore == 5) {
    state = 2;
  }
}

void computerTurn() {
  //depending on what the computer picks it draws the pictures
  if (computerChoice() == 1) {
    drawRockPlayerTwo();
  } else if (computerChoice() == 2) {
    drawPaperPlayerTwo();
  } else if (computerChoice() == 3) {
    drawScissorsPlayerTwo();
  }
}

void resultOfTurn() {
  //prints the corresponding text depending on who wins
  if (result == 3) {
    text("Tie", width/ 2, height / 2);
  } else if (result == 1) {
    text("You win", width / 2, height / 2);
    playerScore++;
  } else if (result == 2) {
    text("You lose", width / 2, height / 2);
    computerScore++;
  } else {
    text("Error", width / 2, height / 2);
  }
  //updating score
  singlePlayerScore = "Your score: "+ playerScore +". \n       Opponent Score: "+computerScore +".";
  text(singlePlayerScore, 100, 50);
}

int computerChoice() {
  //the computer chooses based on the player choice, it always wins
  if (playerSelection == 1) {
    return 2;
  }
  if (playerSelection == 2) {
    return 3;
  }
  if (playerSelection == 3) {
    return 1;
  }
  return 0;
}

int decideWinner(int playerChoice, int computerChoice) {
  //all scenarios of the game
  // 1 = player wins 2 = computer wins 3 = tie
  if (playerChoice == computerChoice) {
    return 3;
  } else if (playerChoice == 2 && computerChoice == 1) {
    return 1;
  } else if (playerChoice == 1 && computerChoice == 2) {
    return 2;
  } else if (playerChoice == 2 && computerChoice == 3) {
    return 2;
  } else if (playerChoice == 3 && computerChoice == 2) {
    return 1;
  } else if (playerChoice == 3 && computerChoice == 1) {
    return 2;
  }
  return 0;
}

//draws all the images

void drawRockPlayerOne() {
  image(rock, (width / 2) - rockOffset, (height / 2), rock.width * rockScale, rock.height * rockScale);
}

void drawPaperPlayerOne() {
  image(paper, (width / 2) - papSciOffset, height / 2, paper.width * papSciScale, paper.height * papSciScale);
}

void drawScissorsPlayerOne() {
  image(scissors, (width / 2) - scissors.width * 0.2, (height / 2), scissors.width * 0.2, scissors.height * 0.2);
}

void drawRockPlayerTwo() {
  image(rock, (width / 2) + rockOffset, (height / 2), rock.width * rockScale, rock.height * rockScale);
}

void drawPaperPlayerTwo() {
  image(paper, (width / 2) + papSciOffset, height / 2, paper.width * papSciScale, paper.height * papSciScale);
}

void drawScissorsPlayerTwo() {
  image(scissors, (width / 2) + scissors.width * 0.2, (height / 2), scissors.width * 0.2, scissors.height * 0.2);
}