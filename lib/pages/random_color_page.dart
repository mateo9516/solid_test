

import 'package:flutter/material.dart';
import 'dart:math';

class RandomColorPage extends StatefulWidget{

  const RandomColorPage({super.key});

  @override
  RandomColorPageState createState() =>  RandomColorPageState();

}


class RandomColorPageState extends State<RandomColorPage>{

  Color background = Color.fromRGBO(255, 255, 255, 1);
 

  @override
  Widget build(BuildContext context){

    return Scaffold(
      body: GestureDetector(
        onTap: () {
          int r = generateNumber();
          int g = generateNumber();
          int b = generateNumber();
          double o = generateOpacity();

          setState(() {
            background = Color.fromRGBO(r, g, b, o);
          });

        },
        child: Container(
          alignment: FractionalOffset.center,
          color: background,
          child: const Text("Hello there"),
          ),
      ),
    );
  }


  int generateNumber(){
    return Random().nextInt(255);
  }

  double generateOpacity(){
    return Random().nextDouble() * 1.01;
  }


}