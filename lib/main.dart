import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lime,
        appBar: AppBar(
          title: Center(child: Text('Dice Rolling')),
          backgroundColor: Colors.deepOrange.shade700,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  var leftDisencumber=1;
  var rightDisencumber=1;

  void changeDiceImage(){

    setState(() {
      leftDisencumber = Random().nextInt(6)+1;
      rightDisencumber = Random().nextInt(6)+1;
    });

}


  @override
  Widget build(BuildContext context) {




    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceImage();
              },
              child: Image.asset('images/dice$leftDisencumber.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeDiceImage();
              },
              child: Image.asset('images/dice$rightDisencumber.png'),
            ),
          ),
        ],
      ),
    );
  }

}




