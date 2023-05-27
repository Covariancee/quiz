import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key, required this.startQuiz});
  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(71, 241, 241, 241),
          ),
          const SizedBox(height: 80),
          const Text(
            'Flutter öğreniyorum',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_right),
            label: const Text('Teste başla'),
          )
        ],
      ),
    );
  }
}

//vOpacity(
//opacity: 0.7,
//child: Image.asset(
//'assets/images/quiz-logo.png',
//width: 300,
//),
//),
