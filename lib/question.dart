import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //final tells that the value doesn't change after initialization but the value which is initialised can be a variable
  final String? questionText;
  Question({this.questionText});
  @override
  Widget build(BuildContext context) {
    return Container(
      // The text is wrapped with container because the text width is adaptive to the number of chars and container is size of the screen
      width: double.infinity, // The infinite width moves till the width of the screen
      margin: EdgeInsets.all(25),
      child: Text(
        "${questionText}", // Use string interpolation to handle empty strings
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
