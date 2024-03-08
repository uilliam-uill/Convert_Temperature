import 'dart:math';

class Game {

  int decision;
  bool? victory;
  Random random = Random();
  int decisionCpu = 0;

  Game(this.decision);

  void gamePlay() {
    decisionCpu = random.nextInt(3) +1;

    switch (decisionCpu) {
      case 1:
        switch (decision) {
          case 1:
            victory = null;
            break;
          case 2:
            victory = true;
            break;
          case 3:
            victory = false;
            break;
        }
        break;

      case 2:
        switch (decision) {
          case 1:
            victory = false;
            break;
          case 2:
            victory = null;
            break;
          case 3:
            victory = true;
            break;
        }
        break;

      case 3:
        switch (decision) {
          case 1:
            victory = true;
            break;
          case 2:
            victory = false;
            break;
          case 3:
            victory = null;
            break;
        }
        break;
    }
  }
}
