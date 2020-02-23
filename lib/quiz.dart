import 'package:flutter/material.dart';
import './answer.dart';
import './question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final int questionsIndex ;
  final Function answerQuestion;
  Quiz({@required this.questions,@required this.answerQuestion,@required this.questionsIndex});
  @override
  Widget build(BuildContext context) {
    return  Column(
                  children: <Widget>[
                    Question(questions[questionsIndex]['questionText']),
                    ...(questions[questionsIndex]['answer'] as List<Map<String,Object>>)
                        .map(
                      (answer) {
                        return Answer(()=> answerQuestion(answer['score']), answer['text']
                        );
                      },
                    ).toList()
                  ],
                );
      
    
  }
}