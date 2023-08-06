import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 320,
            color: const Color.fromARGB(160, 253, 252, 255),
          ),
          const SizedBox(
            height: 40,
          ),
           Text(
            'Learn Flutter the fun way!',
            style: GoogleFonts.lato(
              fontStyle: FontStyle.normal,
              color: const Color.fromARGB(255, 255, 255, 255),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            icon: const Icon(Icons.arrow_right_alt_outlined,
                color: Color.fromARGB(255, 255, 255, 255)),
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.normal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
