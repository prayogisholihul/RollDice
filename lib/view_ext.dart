import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ButtonRounded extends StatelessWidget {
  const ButtonRounded(this.setClick ,this.text, {key});

  final String text;
  final Function setClick;


  @override
  Widget build(BuildContext context) {
     return TextButton(onPressed: setClick, child: StyledText(text), 
          style:  ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.white), 
          minimumSize: MaterialStateProperty.all(Size(50, 35)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))) ),);  
  }

}

class StyledText extends StatelessWidget {
  const StyledText(this.text, {key});

  final String text;

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 14,
      ),
    );
  }
}