import 'package:flutter/material.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(child: Text('question 1'), onPressed: _answerQuestion),
            RaisedButton(
                child: Text('question 2'),
                onPressed: () => print('Answer 2 chosen!')),
            RaisedButton(
                child: Text('question 3'),
                onPressed: () {
                  //...
                  print('Answer 3 chosen!');
                }),
          ],
        ),
      ),
    );
  }
}
