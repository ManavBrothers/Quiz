import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

   final VoidCallback selectHandler;
   final String answerText;
    Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      color: Colors.yellow,
      child:  TextButton(
        child:   Text(
          answerText,
          style: const TextStyle(
            color: Colors.black,fontSize: 15.0
          ),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}

