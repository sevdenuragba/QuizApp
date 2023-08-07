import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';


class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chosenAnswers, required this.onRestart});

  final List<String> chosenAnswers;
  final void Function() onRestart; 

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': chosenAnswers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numCorrectQuestions = summaryData.where((data) {
      return data['user_answer'] == data['correct_answer'];
    }).length;

    return SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Text(
                  'You answered $numCorrectQuestions out of $numTotalQuestions questions correctly.',
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    color: const Color.fromARGB(176, 1, 0, 2),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              const SizedBox(
                height: 30,
              ),
              QuestionsSummary(summaryData),
              const SizedBox(
                height: 30,
              ),
              TextButton.icon(
                onPressed: onRestart,
                icon: const Icon(
                  Icons.restart_alt_rounded,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                label: Text(
                  'Restart quiz',
                  style: GoogleFonts.lato(
                    fontStyle: FontStyle.normal,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}
