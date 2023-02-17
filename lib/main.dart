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
        'answers': ['first', 'I\'m not sure', 'what?', 'Stallion'],
      },
      {
        'questionText': 'Whats your hose',
        'answers': ['diamonds', 'black', 'green', 'bluu'],
      },
      {
        'questionText': 'Favorite sport?',
        'answers': ['Tennis', 'Football', 'Badminton', 'NONE'],
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
