import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void answerQuestion(){
      print('Button pressed');
    }
    var questions = [
      'Who is the name of the Presient of India?',
      'Who is the richest man of the World?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello World"),
        ),
        body: Column(
          children: [
            Text('The question!'),
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
              child: //Text("answer 3"),
              (){
                print("Answer 3"),
              },
            ),
          ],
        ),
      ),
    );
  }
}
