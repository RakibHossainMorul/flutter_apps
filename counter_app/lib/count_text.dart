import 'package:flutter/material.dart';

class count_text extends StatelessWidget {
  int counter;
  count_text(this.counter);
  @override
  Widget build(BuildContext context) {
    return Text(
      'Press $counter times this BUTTON',
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: Colors.purple,
      ),
    );
  }
}
