import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.choosenAnswers});

  final List<String> choosenAnswers;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(choosenAnswers.toString()),
            const SizedBox(height: 30),
            const Text('data'),
            const SizedBox(height: 30),
            TextButton(
              onPressed: () {},
              child: const Text('restart'),
            )
          ],
        ),
      ),
    );
  }
}
