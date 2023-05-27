import 'package:flutter/material.dart';
import 'package:untitled1/answe_button.dart';
import 'package:untitled1/data/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({required this.onSelectedAnswer, super.key});
  final void Function(String answer) onSelectedAnswer;

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int questionIndex = 0;

  void answerQuestions(String selectedAnswer) {
    widget.onSelectedAnswer(selectedAnswer);
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestions = questions[questionIndex];

    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(currentQuestions.text,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                  )),
              const SizedBox(height: 30),
              ...currentQuestions.getShuffledAnswers().map((item) {
                return AnswerButton(
                  answerText: item,
                  onTap: () {
                    answerQuestions(item);

                    ///it should be on anFunct cause when it called triger a new Funt///
                  },
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
//AnswerButton(
//answerText: currentQuestions.answers[0],
//onTap: () {
//questionIndex + 1;
//AnswerButton(answerText: currentQuestions.answers[1], onTap: () {}),
//AnswerButton(answerText: currentQuestions.answers[2], onTap: () {}),
//AnswerButton(answerText: currentQuestions.answers[3], onTap: () {}),
