PImage rock, paper, scissors; //<>//
int playerSelection, result, your;
float rockScale, papSciScale, rockOffset, papSciOffset;
String singlePlayerScore, singlePlayerInstructions;

void singlePlayerText() {
  singlePlayerScore = "Your score: 0. \n       opponent Score: 0. ";
  singlePlayerInstructions = "Instructions: 1 for rock, \n   2 for paper, 3 for scissors.";
  textSize(20);
  text(singlePlayerScore, 100, 50);
  text(singlePlayerInstructions, 150, 650);
}



void keyReleased() {
  result = decideWinner(your, computerChoice());
  your = getYour(key);

  if (state == 1) {

    background(200, 50, 50);
    if (your == 1) {
      drawRockPlayerOne();
    } else if (your == 2) {
      drawPaperPlayerOne();
    } else if (your == 3) {
      drawScissorsPlayerOne();
    }


    if (computerChoice() == 1) {
      drawRockPlayerTwo();
    } else if (computerChoice() == 2) {
      drawPaperPlayerTwo();
    } else if (computerChoice() == 3) {
      drawScissorsPlayerTwo();
    }

    if (result == 3) {
      println("tie");
    } else if (result == 1) {
      println("you win");
    } else if (result == 2) {
      println("computer wins");
    }
  }
}

int computerChoice() {
  if (your == 1) {
    return 2;
  }
  if (your == 2) {
    return 3;
  }
  if (your == 3) {
    return 1;
  }
  return 0;
}

int decideWinner(int playerChoice, int computerChoice) {
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

void drawRockPlayerOne() {
  image(rock, (width / 2) - rockOffset, (height / 2) - rock.height * rockScale, rock.width * rockScale, rock.height * rockScale);
}

void drawPaperPlayerOne() {
  image(paper, (width / 2) - papSciOffset, height / 2, paper.width * papSciScale, paper.height * papSciScale);
}

void drawScissorsPlayerOne() {
  image(scissors, (width / 2) - scissors.width * 0.2, (height / 2) + scissors.height * 0.2, scissors.width * 0.2, scissors.height * 0.2);
}

void drawRockPlayerTwo() {
  image(rock, (width / 2) + rockOffset, (height / 2) - rock.height * rockScale, rock.width * rockScale, rock.height * rockScale);
}

void drawPaperPlayerTwo() {
  image(paper, (width / 2) + papSciOffset, height / 2, paper.width * papSciScale, paper.height * papSciScale);
}

void drawScissorsPlayerTwo() {
  image(scissors, (width / 2) + scissors.width * 0.2, (height / 2) + scissors.height * 0.2, scissors.width * 0.2, scissors.height * 0.2);
}

int getYour(char key) {
  if (key == '1')
    return 1;
  if (key == '2')
    return 2;
  if (key == '3')
    return 3;
  return -1;
}