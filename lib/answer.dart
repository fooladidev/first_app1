// ignore_for_file: deprecated_member_use, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() selectHAndler ;
  final String answerText;
  Answer(this.selectHAndler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        textColor: Colors.white,
      
        color: Colors.blue[300],

        child: Text(answerText),
        onPressed: selectHAndler
        ),
      
    );
  }
}