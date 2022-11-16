import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  //const ResultPage({super.key});
  final int? score;
  final VoidCallback? resetQuiz;
  ResultPage({super.key, this.score, this.resetQuiz});
  // Getter is used to get a value based on certain conditions.
  // Can be used to obtain certain values instead of defining functions for it
  String get resultPhrase {
    String text;
    if (score! <= 8) {
      text = "You are great!!!";
    } else if (score! <= 12) {
      text = "You are good!!!";
    } else {
      text = "You are okay!!!!";
    }
    return text;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            "${resultPhrase}\nYour score is $score",
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(style: TextButton.styleFrom(primary: Colors.deepOrange),onPressed: resetQuiz, child: Text("Restart Quiz!!!")),
        ],
      ),
    );
  }
}
