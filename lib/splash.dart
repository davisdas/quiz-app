import 'package:flutter/material.dart';
import 'package:quizapp/homeScreen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}



class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen(),)));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text("Quiz App",style: TextStyle(fontSize: 40),),
        ),
      ),
    );
  }
}