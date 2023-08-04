import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 320),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Learn Flutter the fun way!',
            style: TextStyle(
              fontStyle: FontStyle.normal,
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.normal,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton(
            onPressed: () {},
            child: const Text('Start Quiz', style: TextStyle(
              fontStyle: FontStyle.normal,
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.normal,
            ),),
          )
        ],
      ),
    );
  }
}
