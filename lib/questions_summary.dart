import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.all(10),
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(117, 47, 44, 85),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(40)),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 10),
                        Text(
                          data['question'] as String,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user_answer'] as String,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal,
                            color: const Color.fromARGB(255, 3, 10, 48),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          data['correct_answer'] as String,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.lato(
                            fontStyle: FontStyle.normal,
                            color:  const Color.fromARGB(255, 3, 44, 133),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 10)
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
  }
