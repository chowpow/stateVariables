PImage rock, paper, scissors;
int yourScore, computerScore, playerChoice;
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
      println("rock");
      image(rock, width / 2, height / 2, rock.width * 0.05, rock.height * 0.05);
      playerChoice = 1;
    }
    else if (key == '2') {
      println("paper");
      image(paper, width / 2, 500, paper.width * 0.2, paper.height * 0.2);
      playerChoice = 2;
    }
    else if (key == '3') {
      println("scissors");
      image(scissors, width / 2, 300, scissors.width * 0.2, scissors.height * 0.2);
      playerChoice = 3;
    } 
    else {
      println("error");
    }
  }
}

int computerChoice() {
  return int(random(1, 3));
}

int decideWinner(int playerScore, int computerScore) {
  



    
  