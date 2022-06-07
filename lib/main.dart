import 'package:flutter/material.dart';

import 'models/database.dart';
import 'models/question.dart';
import 'screens/question_screen.dart';
import 'screens/result_screen.dart';

void main() {
  runApp(const QuizzApp());
}

class QuizzApp extends StatefulWidget {
  const QuizzApp({Key? key}) : super(key: key);

  @override
  State<QuizzApp> createState() => _QuizzAppState();
}

class _QuizzAppState extends State<QuizzApp> {
  final _messengerKey = GlobalKey<ScaffoldMessengerState>();
  List<Question> _questions = Database.selectRandom(4);
  int _currentQuestionIndex = 0;
  int _score = 0;

  void _checkAnswer(bool isCorrect) {
    String msg = '';

    if (isCorrect) {
      msg = 'Resposta correta';
      setState(() => _score += _questions[_currentQuestionIndex].value);
    } else {
      msg = 'Resposta incorreta';
    }

    // ScaffoldMessenger.of(context).showSnackBar(
    //   const SnackBar(
    //     content: Text('Hello'),
    //     duration: Duration(
    //       seconds: 1,
    //     ),
    //   ),
    // );

    setState(() {
      _currentQuestionIndex++;
    });

    debugPrint('score $_score');
    debugPrint('index $_currentQuestionIndex');
  }

  int get _totalScore {
    int total = 0;

    _questions.forEach((element) {
      total += element.value;
    });

    return total;
  }

  void _restart() {
    setState(() {
      _score = 0;
      _currentQuestionIndex = 0;
      _questions = Database.selectRandom(4);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scaffoldMessengerKey: _messengerKey,
      home: (_currentQuestionIndex < _questions.length)
          ? QuestionScreen(
              question: _questions[_currentQuestionIndex],
              onAnswer: _checkAnswer,
            )
          : ResultScreen(
              score: _score,
              totalScore: _totalScore,
              onRestart: _restart,
            ),
    );
  }
}
