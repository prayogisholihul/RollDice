
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:roll_dice/view_ext.dart';

class RollScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
   return _RollerScreenState();
  }
  
}

class _RollerScreenState extends State<RollScreen> {
  var currentDice = 1;

  void rollTheDice () {
    final randomNum = Random().nextInt(6) + 1;
    setState(() {
          currentDice = randomNum;
        });
  }

  @override
  Widget build(BuildContext context) {
   return Container(
      decoration: BoxDecoration(color: Colors.deepPurple),
      child: Center (child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/dice-$currentDice.png', width: 300,),
          SizedBox(height: 18),
          ButtonRounded(rollTheDice, 'Roll Dice') 
        ],
      ),),
    );
  }
}