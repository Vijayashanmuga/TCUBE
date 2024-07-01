import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;
  const Question(
    this.questionText,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(10, 20, 10, 0),
      // width: double.infinity,
      // margin: EdgeInsets.all(0),
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        // textAlign: TextAlign.justify,
      ),
    );
  }
}
