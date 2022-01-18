import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/quizComplete.dart';
import 'package:flutter_complete_guide/quizConstants.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

// _ is a private variable
class _MyAppState extends State<MyApp> {
  // override -> decorator to make it clear that
  var _questionIndex = 0;
  var _score = 0;

  void _answerQuestion(scoreToAdd) {
    setState(() {
      _questionIndex++;
      this._score += scoreToAdd;
    });
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _score = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo'),
        ),
        body: _questionIndex < questions.length
            ? Quiz(questions, _questionIndex, _answerQuestion)
            : QuizComplete(_score, _restartQuiz),
      ),
    );
  }
}
