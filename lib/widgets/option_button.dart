import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final bool isCorrect;

  const OptionButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.isCorrect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        onPressed: () => onPressed(isCorrect),
        child: Text(text),
      ),
    );
  }
}
