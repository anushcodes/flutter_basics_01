import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  //const Quiz({super.key});
  final List<Map<String,Object>>? questions;
  final int questionIndex;
  final Function answerQuestion;
  //final int questionIndex;
  Quiz({required this.questions,required this.answerQuestion,required this.questionIndex});
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            //Text(questions[_questionIndex]),
            Question(
              questionText: questions![questionIndex]['questionText'] as String, //Type cast using as keyword
            ),
            //Answer(_answerQuestion),
            //Answer(_answerQuestion),
            //Answer(_answerQuestion),
            ...(questions![questionIndex]['answers'] as List<Map<String,Object>>).map((answer){
              //spread operator is used to take all values of map as list and map it to a widget
              //int score_val = answer['score'] as int;
              return Answer(()=>answerQuestion(answer['score']), answer['text'] as String);
            }).toList()
          ],
    );
  }
}