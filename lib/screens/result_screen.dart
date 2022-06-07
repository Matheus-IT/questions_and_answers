import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final int score;
  final int totalScore;
  final void Function() onRestart;

  const ResultScreen({
    Key? key,
    required this.score,
    required this.totalScore,
    required this.onRestart,
  }) : super(key: key);

  String get rankName {
    final rank = totalScore != 0 ? score / totalScore : 0.0;
    String name = '';
    if (rank <= 0.25) {
      name = 'FERRO';
    } else if (rank <= 0.50) {
      name = 'BRONZE';
    } else if (rank <= 0.75) {
      name = 'PRATA';
    } else {
      name = 'GOLD';
    }
    return name;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizz Resultado'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Pontuação',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '$score / $totalScore',
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 48.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              rankName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(onPressed: onRestart, child: Text('Reiniciar'))
          ],
        ),
      ),
    );
  }
}
