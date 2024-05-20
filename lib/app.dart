import 'package:flutter/material.dart';
import 'package:quizapp/home_screen.dart';
import 'package:quizapp/questions.dart';
import 'package:quizapp/questionscreen.dart';
import 'package:quizapp/results_screeen.dart';

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
        // selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectedAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  void switchScreen() {
    setState(
      () {
        // activeScreen = const Questions();
        activeScreen = 'questions-screen';
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomeScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionScreen(selectedAnswer);
    }
    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreeen(selectedAnswers, restartQuiz);
    }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: screenWidget,
      ),
    );
  }
}
