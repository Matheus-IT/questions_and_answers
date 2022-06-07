import 'package:flutter/material.dart';

import '../widgets/option_button.dart';
import '../models/question.dart';

class QuestionScreen extends StatelessWidget {
  final Question question;
  final void Function(bool) onAnswer;

  const QuestionScreen({
    Key? key,
    required this.question,
    required this.onAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final options = List<OptionButton>.generate(
      question.options.length,
      (index) => OptionButton(
        text: question.options[index].text,
        isCorrect: question.options[index].correct,
        onPressed: onAnswer,
      ),
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Quizz')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              question.text,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ...options,
        ],
      ),
    );
  }
}
