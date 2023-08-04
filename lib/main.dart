import 'package:flutter/material.dart';

import 'start_screen.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomLeft;

void main() {
  runApp(
    MaterialApp(
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
          child: const StartScreen(),
        ),
      ),
    ),
  );
}
