import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);

  String get resultPhase {
    String resultText = 'I did it!!';
    if (resultScore < 1) {
      resultText = 'Better luck next time!';
    } else if (resultScore == 1) {
      resultText = 'You can improve!';
    } else if (resultScore == 2) {
      resultText = 'You are good!';
    } else {
      resultText = 'You are excellent!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          (Text(
            resultPhase,
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          )),
          FlatButton(
            child: Text("Restart Quiz!"),
            textColor: Colors.white,
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
