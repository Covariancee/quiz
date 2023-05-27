import 'package:flutter/material.dart';
import 'package:untitled1/questions_screen.dart';
import 'package:untitled1/start_screen.dart';
import 'package:untitled1/data/questions.dart';
import 'package:untitled1/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  ///this is the **list** of te users selected answers///
  var activeScreen = 'start-screen';

  void swichScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    ///this is the **method** of the selected answers adding 'selected answers'///
    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'results_screen';
      });
    }
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(startQuiz: swichScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectedAnswer: chooseAnswer,
      );
    }
    if (activeScreen == 'results_screen') {
      screenWidget = ResultsScreen(
        choosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.black, Colors.deepPurple],
            ),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
