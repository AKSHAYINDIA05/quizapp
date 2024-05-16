import 'package:flutter/material.dart';
import 'package:quizapp/home_screen.dart';
import 'package:quizapp/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<StatefulWidget> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  // Widget? activeScreen;
  var activeScreen = 'home-screen';
  // @override
  // void initState() {
  //   activeScreen = HomeScreen(switchScreen);
  //   super.initState();
  // }

  void switchScreen() {
    setState(
      () {
        // activeScreen = const Questions();
        activeScreen = 'questions';
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: activeScreen == 'home-screen'
            ? HomeScreen(switchScreen)
            : const Questions(),
      ),
    );
  }
}
