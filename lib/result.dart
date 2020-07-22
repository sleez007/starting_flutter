import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase{
    var resultText ='You did it';
    if(resultScore <= 8){
      resultText = 'You are awesome and innocent';
    }else if (resultScore <= 20){
      resultText = 'Pretty likeable';
    } else {
      resultText = 'You have a big eye';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),textAlign: TextAlign.center),
          FlatButton(child: Text('Restart Quiz'),textColor: Colors.blue, onPressed:resetHandler ,)
        ],
      )
    );
  }
}
