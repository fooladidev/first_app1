import 'package:first_app/question.dart';
import 'package:flutter/material.dart';

import 'answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function() answerQ;
  Quiz({required this.questions,required this.questionIndex,required this.answerQ});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questionText: questions[questionIndex]['qText'].toString()),
        ...(questions[questionIndex]['answers'] as List<String>).map((answer) {
          return Answer(answerQ, answer);
        }).toList()
      ],
    );
  }
}
