import 'package:flutter/material.dart';
import 'package:mad_flutter/answer.dart';
import 'package:mad_flutter/question.dart';

class Quiz  extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestions;

  Quiz({@required this.questions, @required this.answerQuestions,@required this.questionIndex});
@override
Widget build(BuildContext context) {
return Column(
  children: <Widget>[
    Question(questions[questionIndex]['questionText']),
    ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer)=>Answer(()=>answerQuestions(answer['score']),answer['text'])).toList(),
  ],
);
}
}