import 'package:flutter/material.dart';
import 'package:newapp/data.dart';
import 'package:newapp/quiz.dart';
import 'package:newapp/result.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  final _questions = const [
    {
      "questionText": "What is favorite your color ?",
      "answers": [
        {
         "text" : "Red","score" :8
        },
        {
          "text" : "white","score" :5
        },
        {
          "text" : "Black","score" :10
        },
        {
          "text" : "pink","score" :7
        },
      ]
    },
    {
      "questionText": "What is favorite your dish ?",
      "answers": [
        {
          "text" : "Momos","score" :10
        },
        {
          "text" : "Samosa","score" :2
        },
        {
          "text" : "Pizza","score" :5
        },
        {
          "text" : "Burger","score" :4
        },
      ]
    },
    {
      "questionText": "What is favorite your ice-cream ?",
      "answers": [
        {
          "text" : "Vanilla","score" :6
        },
        {
          "text" : "Strawberry","score" :2
        },
        {
          "text" : "Pineapple","score" :8
        },
        {
          "text" : "Butterscotch","score" :10
        },
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }


  void _answerQuestion(int score) {

    _totalScore =  _totalScore + score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We Have more questions !");
    } else {
      print("No more question");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Quiz App"),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                  questions: _questions,
                )
              :  Result(_totalScore, _resetQuiz)),
    );
  }
}
