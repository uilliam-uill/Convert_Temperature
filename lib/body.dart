import 'package:convert_temperature/Game.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int decision = 0;
  String image = "";
  int notesCpu = 0;
  int notesUser = 0;
  int scoreUser = 0;
  int scoreCpu = 0;

  void imageCpu(int number) {
    switch (number) {
      case 1:
        image = "pedra.png";
        break;
      case 2:
        image = "papel.png";
        break;
      case 3:
        image = "tesoura.png";
        break;
    }
  }

  void showResultDialog(bool? victory, int choiceCpu) {
    String result = "";
    String image = "";
    // int choiceCpu = 0;
    if (victory == true) {
      result = "Você venceu!";
      scoreUser++;
    } else if (victory == false) {
      result = "Você perdeu!";
      scoreCpu++;
    } else {
      result = "Empate!";
    }

    if (choiceCpu == 1) {
      image = "assets/images/pedra.png";
    } else if (choiceCpu == 2) {
      image = "assets/images/papel.png";
    } else if (choiceCpu == 3) {
      image = "assets/images/tesoura.png";
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Escolha da CPU:"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(image),
              Text(result),Text("Placar: User " + scoreUser.toString() + " X " + scoreCpu.toString() + " CPU")
            ],
          ),
          actions: <Widget>[],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue[300],
        title: Text('Pedra Papel ou Tesoura'),
        actions: [
          ElevatedButton(
            onPressed: () {},
            child: Text("?"),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(height: 20),
            Text("Escolha uma Opção"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    icon: Image.asset("assets/images/pedra.png",
                        height: 100, width: 100),
                    onPressed: () {
                      decision = 1;
                      Game game = Game(decision);
                      game.gamePlay();
                      imageCpu(game.decisionCpu);
                      showResultDialog(game.victory, game.decisionCpu);
                    }),
                IconButton(
                    icon: Image.asset("assets/images/papel.png",
                        height: 100, width: 100),
                    onPressed: () {
                      decision = 2;
                      Game game = Game(decision);
                      game.gamePlay();
                      imageCpu(game.decisionCpu);
                      showResultDialog(game.victory, game.decisionCpu);
                    }),
                IconButton(
                    icon: Image.asset("assets/images/tesoura.png",
                        height: 100, width: 100),
                    onPressed: () {
                      decision = 3;
                      Game game = Game(decision);
                      game.gamePlay();
                      imageCpu(game.decisionCpu);
                      showResultDialog(game.victory, game.decisionCpu);
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}
