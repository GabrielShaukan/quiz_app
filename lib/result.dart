import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    var resultText = 'You Did it!';
    if (resultScore <= 8) {
      resultText = "You scored smaller than 9";
    } else if (resultScore <= 16) {
      resultText = 'You scored smaller than 17';
    } else {
      resultText = 'You scored a lot';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
