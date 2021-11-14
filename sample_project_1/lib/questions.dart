import 'package:flutter/material.dart';

class hello extends StatelessWidget {
  final String question_number;
  hello(this.question_number);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        question_number,
        style: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w900,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
