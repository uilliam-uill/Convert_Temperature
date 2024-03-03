import 'package:flutter/material.dart';

class Open extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: double.infinity,
      width: double.infinity,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/home-image.png",
            height: 250,
            width: 250,
            ),

          Container(
            height: 20,
          ),

          Text(
            "CONVTEMP",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30
            )
            ),

            Container(
              height: 20,
            ),

          Text(
            "Converso de temperatura",
            style: TextStyle(
              color: Colors.white,
              fontSize: 22
            )
          ),

            Container(
              height: 5,
            ),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow[700]
            ),
            onPressed: (){}, 
            child:
             Text(
              "Acessar conversor",
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