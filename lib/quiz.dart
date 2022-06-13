import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final List<Map<String, Object>> questions;
  final int questionIndex;

  Quiz(
      {required this.answerQuestion,
      required this.questions,
      required this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Question(questions.elementAt(questionIndex)["questionText"] as String),
      ...(questions.elementAt(questionIndex)["answer"] as List<String>)
          .map((answer) {
        return Answer(
            () => answerQuestion(
                answer, questions.elementAt(questionIndex)["exAns"] as String),
            answer);
      }).toList(),
      Text("bye")
    ]);
  }
}
