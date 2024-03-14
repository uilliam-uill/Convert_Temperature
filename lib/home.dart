import 'package:convert_temperature/body.dart';
import 'package:flutter/material.dart';

class Open extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[300],
      height: double.infinity,
      width: double.infinity,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/logo.png",
            height: 250,
            width: 250,
            ),

          Container(
            height: 20,
          ),

          Text(
            "JokenPoo",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30
            )
            ),
            Container(
              height: 5,
            ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow[700]
            ),
            onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HomeScreen())
              );
            }, 
            child:
             Text(
              "JOGAR",
              style: TextStyle(
                color: Colors.white
              ),
              )
            )
        ],
      )
    );
  }
}