import './question.dart';

class Database {
  static const _questions = [
    Question(
      value: 1,
      text: 'Qual a capital do Egito?',
      options: [
        Option(text: 'Casablanca', correct: false),
        Option(text: 'Cairo', correct: true),
        Option(text: 'Luanda', correct: false),
        Option(text: 'Argel', correct: false),
      ],
    ),
    Question(
      value: 1,
      text: 'Qual a nota musical identificada por D#',
      options: [
        Option(text: 'Dó sustenido', correct: false),
        Option(text: 'Ré sustenido', correct: true),
        Option(text: 'Sol bemol', correct: false),
        Option(text: 'Si bemol', correct: false),
      ],
    ),
    Question(
      value: 1,
      text: 'Qual a linguagem de programação utilizada pelo framework Flutter?',
      options: [
        Option(text: 'Dart', correct: true),
        Option(text: 'Flutter', correct: false),
        Option(text: 'Java', correct: false),
        Option(text: 'Javascript', correct: false),
      ],
    ),
    Question(
      value: 1,
      text: 'Quem escreveu o livro 1984?',
      options: [
        Option(text: 'George Orwell', correct: true),
        Option(text: 'Herman Melville', correct: false),
        Option(text: 'Ernest Hemingway', correct: false),
        Option(text: 'Jane Austin', correct: false),
      ],
    ),
    Question(
      value: 1,
      text: 'Quem foi a primeira pessoa a viajar no Espaço?',
      options: [
        Option(text: 'Yuri Gagarin', correct: true),
        Option(text: 'A cadela Laika', correct: false),
        Option(text: 'Neil Armstrong', correct: false),
        Option(text: 'Marcos Pontes', correct: false),
      ],
    ),
    Question(
      value: 1,
      text: 'Que país tem o formato de uma bota?',
      options: [
        Option(text: 'Itália', correct: true),
        Option(text: 'Butão', correct: false),
        Option(text: 'Portugal', correct: false),
        Option(text: 'México', correct: false),
      ],
    ),
  ];

  static int get questionCount => _questions.length;

  static List<Question> selectRandom(int count) {
    final List<int> indexes = List<int>.generate(
      questionCount,
      (index) => index,
    );

    indexes.shuffle();

    return List<Question>.generate(count, (index) => _questions[index]);
  }
}
