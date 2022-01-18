import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  // there will not be a reassignment of the questionText
  // final is a RUNTIME constant
  final String questionText;

  // instantiate with "props"
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 22),
          textAlign: TextAlign.center,
        ));
  }
}
