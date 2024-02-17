import 'package:flutter/material.dart';
import 'package:roll_dice/roll_screen.dart';

void main() {
  runApp(RollDiceApp());
}

class RollDiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: RollScreen(),
      ),
    );
  }
}