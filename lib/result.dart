import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 18) {
      resultText = "Need to do some work";
    } else if (resultScore <= 20) {
      resultText = "Just reach the accuracy keep playing";
    } else if (resultScore <= 26) {
      resultText = "Just reach the accuracy keep playing";
    } else {
      resultText = "Congrats Hurry !";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Text(
          resultPhrase,
          style: const TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      ElevatedButton(
        onPressed: resetHandler,
        child: const Text("Reset Quiz"),
      ),
    ] );
  }
}
