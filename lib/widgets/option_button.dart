import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String text;

  const OptionButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text),
      ),
    );
  }
}
