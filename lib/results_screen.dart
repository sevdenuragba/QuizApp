import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(context) {
    return Center(
      child: SizedBox(
        width: double.infinity,
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('You answerd x out of y questions correctly'),
              const SizedBox(
                height: 30,
              ),
              const Text('List of answers'),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                onPressed: () {},
                child: const Text('REstart quiz'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
