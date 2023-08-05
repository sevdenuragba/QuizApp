import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text(
            'The question here',
            style: TextStyle(
              fontStyle: FontStyle.normal,
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          AnswerButton(answerText: '1', onTap: () {}),
          AnswerButton(answerText: '2', onTap: () {}),
          AnswerButton(answerText: '3', onTap: () {}),
          AnswerButton(answerText: '4', onTap: () {})
        ],
      ),
    );
  }
}
