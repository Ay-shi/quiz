import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  Result(this.score);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
            "quiz finished, YOU DID IT!!!\nYou have a final Score of ${score.toString()}",
            style: TextStyle(
              color: Colors.amber,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            )));
  }
}
