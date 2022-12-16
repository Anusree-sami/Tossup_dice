import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
         title: Text('Toss up!!!'),
          backgroundColor: Colors.black26,
        ),
        body: DicePage(),
      ),
    )
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  void changeDice(){
    setState((){
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: TextButton(
                onPressed: (){
                  setState((){
                    changeDice();
                  });
                },
                child: Image.asset('images/dicee$rightDiceNumber.png'),
              ),
          ),
          Expanded(
              child:TextButton(
                    onPressed: (){
                  setState((){
                    changeDice();
                  });
                },
                child: Image.asset('images/dicee$leftDiceNumber.png'),
              ),
          ),
        ],
      )
    );
  }
}

