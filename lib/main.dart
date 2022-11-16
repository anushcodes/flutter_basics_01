import 'package:flutter/material.dart';
import 'package:sample/result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return _MyAppState();
  }
}
// leading underscore turns the class from public to private

// underscore -> private
class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  final _questions = [
    {
      'questionText': "What is your favourite colour?",
      'answers': [
        {'text': "Red", 'score': 10},
        {'text': "Blue", 'score': 7},
        {'text': "Black", 'score': 5},
        {'text': "Green", 'score': 3}
      ],
    },
    {
      'questionText': "What is your favourite animal?",
      'answers': [
        {'text': "Dog", 'score': 10},
        {'text': "Cat", 'score': 7},
        {'text': "Horse", 'score': 5},
        {'text': "Lion", 'score': 3}
      ],
    },
    {
      'questionText': "What is your favourite cartoon character?",
      'answers': [
        {'text': "Tom", 'score': 10},
        {'text': "Jerry", 'score': 7},
        {'text': "Mr.Bean", 'score': 5},
        {'text': "Peter", 'score': 3}
      ],
    },
  ];
  var _totalScore = 0;
  void _answerQuestion(int score){
    _totalScore+=score;
    setState((() {
      _questionIndex += 1;
    }));
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print("We have more questions");
    } else {
      print("No more questions");
    }
  }
  void _resetQuiz(){
    setState(() {
      _questionIndex=0;
      _totalScore=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    //Map can be represented by Map(key,val) or {};
    //const tells that the value doesn't change after initialization and also the value which is initialised is a constant and not a variable
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My First App"),
        ),
        // In the body there is a ternary operator. [ --> condition? true block : false block ]
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex)
            : ResultPage(score:_totalScore,resetQuiz:_resetQuiz),
      ),
    );
  }
}
