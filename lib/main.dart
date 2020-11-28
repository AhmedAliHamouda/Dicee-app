import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  return runApp(
    MaterialApp(

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue.shade900,
          centerTitle: true,
        ),

        body: SafeArea(
          child: DicePage(),
        ),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // ignore: non_constant_identifier_names
  int LeftDiceNum= 5;
  int RightDiceNum=1;
  void ChangeDiceShape(){
    setState(() {
      LeftDiceNum= Random().nextInt(6)+1;
      RightDiceNum=Random().nextInt(6)+1;
    });


  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget> [

          Expanded(
            child:FlatButton(
              child: Image.asset('images/dice$LeftDiceNum.png'),
              onPressed: (){
                ChangeDiceShape();
              },
            ),
          ),
          Expanded(
            child:FlatButton(
              child: Image.asset('images/dice$RightDiceNum.png'),
              onPressed: (){
                ChangeDiceShape();
              },
            ),
          ),

        ],
      ),
    );
  }
}


