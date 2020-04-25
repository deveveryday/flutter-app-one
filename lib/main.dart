import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:device_info/device_info.dart';

// void main(){
//   runApp(AppOne());
// }

void main() => runApp(AppOne());

class AppOne extends StatefulWidget {
  State<StatefulWidget> createState() {
    return _AppOneState();
  }
}

class _AppOneState extends State<AppOne> {
  var _questionIndex = 0;

  void _answerQuestion() {
    print('wow');
    setState(() {
      _questionIndex = ((_questionIndex > 2) ? 0 : 1 + _questionIndex);
    });
  }

  @override
  Widget build(BuildContext ctx) {
    var questions = [
      'Which trick perform today?',
      'Which stance?',
      'Which side?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SKATEeveryday'),
          backgroundColor: Color.fromRGBO(900, 0, 0, 1),
        ),
        body: Column(
          children: [
            new Text(
              questions[_questionIndex],
            ),
            new RaisedButton(
              child: Text('Hardflip'),
              onPressed: _answerQuestion,
            ),
            new RaisedButton(
              child: Text('F/S 180'),
              onPressed: _answerQuestion,
            ),
            new RaisedButton(
              child: Text('Pop Shovit'),
              onPressed: _answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
