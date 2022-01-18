import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  // instantiate with "props"
  final Function answerQuestion;
  final String answerText;

  Answer(this.answerQuestion, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      // as much as possible
      width: double.infinity,
      child: RaisedButton(
        onPressed: answerQuestion,
        child: Text(answerText),
        color: Colors.blue,
        textColor: Colors.white,
      ),
    );
  }
}
