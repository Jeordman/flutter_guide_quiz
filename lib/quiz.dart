import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import 'package:flutter_complete_guide/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int _questionIndex;
  final Function _answerQuestion;

  Quiz(this.questions, this._questionIndex, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Question(questions[_questionIndex]['questionText']),
        ...(questions[_questionIndex]['answers'] as List<Map>).map((answerObj) {
          return Answer(
            _answerQuestion,
            answerObj['text'],
            answerObj['score'],
          );
        }).toList(),
      ],
    );
  }
}
