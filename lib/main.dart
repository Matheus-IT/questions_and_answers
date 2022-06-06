import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: const Text('Quizz')),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  'Texto da questão',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              OptionButton(text: 'Alternativa1'),
              OptionButton(text: 'Alternativa2'),
              OptionButton(text: 'Alternativa3'),
              OptionButton(text: 'Alternativa4'),
            ],
          )),
    );
  }
}
