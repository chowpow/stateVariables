PImage rock, paper, scissors;
int yourScore, computerScore, playerChoice;
String singlePlayerScore, singlePlayerInstructions;

void singlePlayerText() {
  singlePlayerScore = "Your score: 0. \n       opponent Score: 0. ";
  singlePlayerInstructions = "Instructions: 1 for rock, \n   2 for paper, 3 for scissors.";
  textSize(20);
  text(singlePlayerScore, 100, 50);
  text(singlePlayerInstructions, 150, 650);
  
  image(rock, width / 2, height / 2, rock.width * 0.05, rock.height * 0.05);
  image(paper, width / 2, 500, paper.width * 0.2, paper.height * 0.2);
  image(scissors, width / 2, 300, scissors.width * 0.2, scissors.height * 0.2);
}



void keyReleased() {
  if (state == 1) {
    if (key == '1') {
      println("rock");
    }
    else if (key == '2') {
      println("paper");
    }
    else if (key == '3') {
      println("scissors");
    } 
    else {
      println("error");
    }
  }
}


    
  