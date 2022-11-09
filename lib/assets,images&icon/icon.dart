import 'package:flutter/material.dart';

// ICONBUTTON is used for interactive icon.

class Icon_Widget extends StatelessWidget {
  const Icon_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 24,
              semanticLabel: 'Text to announce in accesiblity modes',
            ),
            Icon(
              Icons.audiotrack,
              color: Colors.green,
              size: 24,
            ),
            Icon(
              Icons.umbrella,
              color: Colors.blue,
              size: 24,
            ),
          ],
        ),
      ),
    ));
  }
}
