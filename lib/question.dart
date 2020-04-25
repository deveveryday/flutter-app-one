import 'package:flutter/cupertino.dart';
@override
class Question extends StatelessWidget{
  String questionText;

  Question(this.questionText);

  Widget build(BuildContext context){
    return Text(this.questionText);
  }
}