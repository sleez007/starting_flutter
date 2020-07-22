import 'package:flutter/material.dart';
import 'package:mad_flutter/question.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
class _MyAppState extends State<MyApp>{
  var _questionIndex = 0;

  void _answerQuestion(){
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
  }

  List<String> questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];
  @override
  Widget build(BuildContext context) {
    print('questionIndex');
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('Flutter demo'),),
          body: Column(
            children: <Widget>[
              Question(questions[_questionIndex]),
              RaisedButton(child: Text('Answer 1'), onPressed: _answerQuestion),
              RaisedButton(child: Text('Answer 2'), onPressed:()=>print('Answer 2 chosen')),
              RaisedButton(child: Text('Answer 3'), onPressed: ()=>print('Answer 3 chosen'))
            ],
          )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

