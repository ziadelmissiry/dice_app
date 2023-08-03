import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.red,
        ),
        body: Dicepage(),
      ),
    ),
  );
}





class Dicepage extends StatefulWidget {
  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 3;

  void changeDiceFace(){
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(onPressed: () {
              setState(() {
                changeDiceFace();
              });
            },
                child: Image.asset('images/dice$leftDiceNumber.png')),
          ),
          Expanded(child: TextButton(onPressed: () {
            setState(() {
              changeDiceFace();
            });
          },
              child: Image.asset('images/dice$rightDiceNumber.png')),
          ),
        ],
      ),
    );
  }
  }


