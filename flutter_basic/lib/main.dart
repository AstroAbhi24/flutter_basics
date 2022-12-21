import 'package:flutter/material.dart';
import './questions.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _quesIndex = 0;

  void answerQuestion() {
    setState(() {
      _quesIndex = _quesIndex + 1;
    });
    print(_quesIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Who is the name of the Presient of India?',
      'Who is the richest man of the World?',
      'What is my name?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Align(
          alignment: Alignment.center,
          child: Column(
            children: [
              Question(questions[_quesIndex]),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text(
                  "answer 1",
                ),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text("answer 2"),
              ),
              ElevatedButton(
                onPressed: answerQuestion,
                child: Text("answer 3"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
