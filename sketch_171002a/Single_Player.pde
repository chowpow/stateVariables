PImage rock, paper, scissors;
int playerSelection, result;
String singlePlayerScore, singlePlayerInstructions;

void singlePlayerText() {
  singlePlayerScore = "Your score: 0. \n       opponent Score: 0. ";
  singlePlayerInstructions = "Instructions: 1 for rock, \n   2 for paper, 3 for scissors.";
  textSize(20);
  text(singlePlayerScore, 100, 50);
  text(singlePlayerInstructions, 150, 650);
    
}



void keyReleased() {
  if (state == 1) {
    background(224, 25, 25);
    if (key == '1') {
      println("player: rock");
      image(rock, (width / 2) - rock.width * 0.05, (height / 2) - rock.height * 0.05, rock.width * 0.05, rock.height * 0.05);
      playerSelection = 1;
    }
    else if (key == '2') {
      println("player: paper");
      image(paper, (width / 2) - paper.width * 0.2, height / 2, paper.width * 0.2, paper.height * 0.2);
      playerSelection = 2;
    }
    else if (key == '3') {
      println("player: scissors");
      image(scissors, (width / 2) - scissors.width * 0.2, (height / 2) + scissors.height * 0.2, scissors.width * 0.2, scissors.height * 0.2);
      playerSelection = 3;
    } 
    else {
      println("error");
    }
  }
  
  computerChoice();
  
  if (computerChoice() == 1) {
    println("computer: rock");
    image(rock, (width / 2) + rock.width * 0.05, (height / 2) - rock.height * 0.05, rock.width * 0.05, rock.height * 0.05);
  }
  else if (computerChoice() == 2) {
    println("computer: paper");
    image(paper, (width / 2) + paper.width * 0.2, height / 2, paper.width * 0.2, paper.height * 0.2);
  }
  else if (computerChoice() == 3) {
    println("computer: scissors");
    image(scissors, (width / 2) + scissors.width * 0.2, (height / 2) + scissors.height * 0.2, scissors.width * 0.2, scissors.height * 0.2);
  }
  
  decideWinner(playerSelection, computerChoice());
    
    
    
}

int computerChoice() {
  return int(random(1, 3));
} //<>//

int decideWinner(int playerChoice, int computerChoice) {
  // 1 = player wins 2 = computer wins 3 = tie
  if (playerChoice == computerChoice) {
    println("tie");
    return 3;
    
  }
  else if (playerChoice == 2 && computerChoice == 1) {
    return 1;
  }
  else if (playerChoice == 1 && computerChoice == 2) {
    return 2;
  }
  else if (playerChoice == 2 && computerChoice == 3) {
    return 2;
  }
  else if (playerChoice == 3 && computerChoice == 2) {
    return 1;
  }
  else if (playerChoice == 1 && computerChoice == 2) {
    return 1;
  }
  else if (playerChoice == 3 && computerChoice == 1) {
    return 2;
  }
  return 0;
}
  



    
  