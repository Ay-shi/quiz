import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      "questionText": "which one of these is harry's house?",
      "answer": ["gryffindor", "slytherin", "hufflepuff"],
      "exAns": "gryffindor"
    },
    {
      "questionText": "which one one of them is a weasley?",
      "answer": ["hermione", "hagrid", "Bill"],
      "exAns": "Bill"
    },
    {
      "questionText": "hermione's parents were:",
      "answer": ["painters", "pilots", "doctors"],
      "exAns": "doctors"
    },
  ];
  //List<String> questions = [
  //   "which one of these is harry's house?",
  //   "which one one of them is a weasley?",
  //   "hermione's parents were:"
  // ];
  void _answerQuestion(String answer, String exAns) {
    setState(() {
      _questionIndex += 1;
    });
    if (answer == exAns) {
      _totalScore += 10;
    }
    // questionIndex += 1;
    // var stl = questions.elementAt(_questionIndex)["answer"];
    // print(stl);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // color: Colors.purpleAccent,
      // theme: ThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: Text("quiz app"),
          backgroundColor: Colors.amber,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
