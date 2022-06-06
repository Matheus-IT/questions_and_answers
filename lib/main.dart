import 'package:flutter/material.dart';
import 'package:questions_and_answers/models/database.dart';
import 'package:questions_and_answers/models/question.dart';

import 'widgets/option_button.dart';

void main() {
  runApp(const QuizzApp());
}

class QuizzApp extends StatefulWidget {
  const QuizzApp({Key? key}) : super(key: key);

  @override
  State<QuizzApp> createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  List<Question> _questions = Database.selectRandom(4);
  int _currentQuestionIndex = 0;

  void _checkAnswer() {
    debugPrint('Working!');
  }

  @override
  Widget build(BuildContext context) {
    final options = List<OptionButton>.generate(
      _questions[_currentQuestionIndex].options.length,
      (index) => OptionButton(
          text: _questions[_currentQuestionIndex].options[index].text,
          onPressed: _checkAnswer),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Quizz')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                _questions[_currentQuestionIndex].text,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ...options,
          ],
        ),
      ),
    );
  }
}
