// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, must_be_immutable

import 'package:first_app/quiz.dart';
import 'package:first_app/result.dart';
import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _qIndex = 0;

  void _answerQ() {
    if (_qIndex < _questions.length) {
      setState(() {
        _qIndex = _qIndex + 1;
      });
    }
  }

  final _questions = const [
    {
      'qText': 'what is your favorite color?',
      'answers': ['red', 'green', 'yellow', 'blue']
    },
    {
      'qText': 'what is your favorite animal?',
      'answers': ['cat', 'rabbit', 'snake', 'lion']
    },
    {
      'qText': 'who is your favorite actor?',
      'answers': ['leonardo', 'brad', 'tom', 'tomHanks']
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _qIndex < _questions.length
              ? Quiz(
                  answerQ: _answerQ,
                  questionIndex: _qIndex,
                  questions: _questions,
                )
              : Result()),
    );
  }
}
