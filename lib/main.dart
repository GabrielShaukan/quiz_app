import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Text('The question'),
            RaisedButton(child: Text('question 1'), onPressed: null),
            RaisedButton(child: Text('question 2'), onPressed: null),
            RaisedButton(child: Text('question 3'), onPressed: null),
          ],
        ),
      ),
    );
  }
}
