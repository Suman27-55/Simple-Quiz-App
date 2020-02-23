import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(ApplicationOne());
}

class ApplicationOne extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ApplicationOneState();
  }
}

class _ApplicationOneState extends State {
  var _questionsIndex = 0;
  var _totalScore = 0;
  void _resetQuiz() {
    setState(() {
      _questionsIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionsIndex = _questionsIndex + 1;
    });

    print(_questionsIndex);
  }

  Widget build(BuildContext context) {
    var _questions = [
      {
        'questionText': 'What\'s made of wood but can\'t be sawed??',
        'answer': [
          {'text': 'A log', 'score': 0},
          {'text': 'A bench', 'score': 0},
          {'text': 'A tree', 'score': 0},
          {'text': 'Sawdust', 'score': 1}
        ]
      },
      {
        'questionText': 'I am a yellow Colonel,a sauce and a gas.What am I?',
        'answer': [
          {'text': 'Mustard', 'score': 1},
          {'text': 'Tomato', 'score': 0},
          {'text': 'Laughing', 'score': 0},
          {'text': 'Saunders', 'score': 0}
        ]
      },
      {
        'questionText': 'Look at my face;i\'m somebody;from the back,I am nobody.What am I?',
        'answer': [
          {'text': 'A diamond', 'score': 0},
          {'text': 'A truck', 'score': 0},
          {'text': 'A mirror', 'score': 1},
          {'text': 'A hole', 'score': 0}
        ]
      }
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("This is my first App"),backgroundColor: Colors.black,
          ),
          body: _questionsIndex < _questions.length
              ? Quiz(
                  answerQuestion: _answerQuestion,
                  questionsIndex: _questionsIndex,
                  questions: _questions,
                )
              : Result(_totalScore, _resetQuiz),backgroundColor: Colors.red,),
    );
  }
}

