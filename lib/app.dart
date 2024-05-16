import 'package:flutter/material.dart';
import 'package:quizapp/home_screen.dart';
import 'package:quizapp/questions.dart';
import 'package:quizapp/questionscreen.dart';

class App extends StatefulWidget {
  const App({super.key});
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  // Widget? activeScreen;
  List<String> selectedAnswers = [];
  var activeScreen = 'home-screen';
  // @override
  // void initState() {
  //   activeScreen = HomeScreen(switchScreen);
  //   super.initState();
  // }
  void selectedAnswer(String answer) {
    selectedAnswers.add(answer);
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'home-screen';
      });
    }
  }

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
            : QuestionScreen(selectedAnswer),
      ),
    );
  }
}
