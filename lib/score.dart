import 'package:flutter/material.dart';

class ScoreBoard extends StatefulWidget {
  const ScoreBoard({super.key});

  @override
  State<ScoreBoard> createState() => _ScoreBoardState();
}

class _ScoreBoardState extends State<ScoreBoard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:  Colors.grey[850],
          body: Column(
            children: [
              Center(child: Text("Score",style: TextStyle(fontSize: 30,color: Colors.white),)),
              Text("")
            ],
          ),
      ),
    );
  }
}