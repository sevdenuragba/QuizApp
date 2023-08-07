
import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomLeft;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  final List<String> selectedAnswers = [];
  
  var activeScreen;

  @override
  void initState() {
    activeScreen = 'start-screen';
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
  }

  @override
  Widget build(context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 143, 17, 182),
              Color.fromARGB(255, 178, 13, 184)
            ],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: activeScreen == 'start-screen'
            ? StartScreen(switchScreen)
            : QuestionsScreen(onSelectAnswer: chooseAnswer),
      ),
    ));
  }
}
