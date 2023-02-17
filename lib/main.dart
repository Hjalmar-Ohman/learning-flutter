import 'package:flutter/material.dart';
import 'package:guide/answer.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'Whats your favorite horse',
        'answers': [
          {'text': 'first', 'score': 10},
          {'text': 'I\'m not sure', 'score': 10},
          {'text': 'what?', 'score': 10},
          {'text': 'Stallion', 'score': 10},
        ],
      },
      {
        'questionText': 'Whats your hose',
        'answers': [
          {'text': 'diamonds', 'score': 7},
          {'text': 'black', 'score': 3},
          {'text': 'green', 'score': 1},
          {'text': 'bluu', 'score': 9},
        ],
      },
      {
        'questionText': 'Favorite sport?',
        'answers': [
          {'text': 'Tennis', 'score': 3},
          {'text': 'Football', 'score': 5},
          {'text': 'Badminton', 'score': 3},
          {'text': 'NONE', 'score': 0},
        ],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My First App!"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}
