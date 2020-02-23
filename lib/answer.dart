import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handler;
  final String answerText;

  Answer(this.handler,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
          color: Colors.amber, child: Text(answerText),textColor: Colors.black, onPressed: handler),
    );
  }
}
