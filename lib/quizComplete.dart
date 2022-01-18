import 'package:flutter/material.dart';

class QuizComplete extends StatelessWidget {
  final _score;
  final VoidCallback _restartQuiz;

  QuizComplete(this._score, this._restartQuiz);

  String get resultPhrase {
    String resultText;
    if (_score <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (_score <= 12) {
      resultText = 'Pretty likeable!';
    } else if (_score <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Congratulations! You have completed the quiz.' +
              '\n' +
              'Your score is: ' +
              _score.toString() +
              '\n' +
              resultPhrase),
          RaisedButton(
            onPressed: _restartQuiz,
            child: Text('Restart'),
          )
        ],
      ),
    );
  }
}
