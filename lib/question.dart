import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0,),
      width: double.infinity,
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 28.0,
          color: Colors.black
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
