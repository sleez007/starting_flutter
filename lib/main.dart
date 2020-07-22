import 'package:flutter/material.dart';
import 'package:mad_flutter/quiz.dart';
import 'package:mad_flutter/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  static const _questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 2},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cow', 'score': 5},
        {'text': 'Rabbit', 'score':4},
        {'text': 'Zebra', 'score': 1},
        {'text': 'Lion', 'score': 2}
      ]
    },
    {
      'questionText': 'Whose your favorite instructor?',
      'answers': [
        {'text': 'Kingsley', 'score': 1},
        {'text': 'Max', 'score': 2},
        {'text': 'Traversy', 'score': 7},
        {'text': 'Mitch', 'score': 3}
      ]
    }
  ];

  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex++;
    });

    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter demo'),
          ),
          body: _questionIndex < _questions.length
              ? Quiz(
                  answerQuestions: _answerQuestion,
                  questions: _questions,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore, _resetQuiz)
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
