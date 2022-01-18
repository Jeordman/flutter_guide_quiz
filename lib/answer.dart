import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // instantiate with "props"
  final Function answerQuestion;
  final String answerText;
  final num score;

  Answer(this.answerQuestion, this.answerText, this.score);

  @override
  Widget build(BuildContext context) {
    return Container(
      // as much as possible
      width: double.infinity,
      child: RaisedButton(
        onPressed: () => answerQuestion(score),
        child: Text(answerText),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
