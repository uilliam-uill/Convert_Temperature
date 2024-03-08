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

      void imageCpu( int number){
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
            Text("Escolha do App"),
            Container(height: 10),
            Stack(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.blue[300],
                      borderRadius: BorderRadius.circular(30)),
                ),
                Image.asset("assests/images/" + image)
              ],
            ),
            Container(height: 20),
            Text("Escolha uma Opção"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              IconButton(icon: Image.asset("assets/images/pedra.png", height: 100, width: 100), onPressed: (){
                decision = 1;
                Game(decision).gamePlay();
                imageCpu(Game(decision).decisionCpu);
              }), 
              IconButton(icon: Image.asset("assets/images/papel.png", height: 100, width: 100), onPressed: (){
                decision = 2;
                Game(decision).gamePlay();
                imageCpu(Game(decision).decisionCpu);
              }),
              IconButton(icon: Image.asset("assets/images/tesoura.png", height: 100, width: 100), onPressed: (){
                decision = 3;
                Game(decision).gamePlay();
                imageCpu(Game(decision).decisionCpu);
              }),

              Text("PLACAR"),
              
              ],
            )
          ],
        ),
      ),
    );
  }
}
