import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({super.key});
  void Function() selectHandler;
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed:selectHandler, //onpressed usually takes a callback if it is a function
      ),
    );
  }
}
