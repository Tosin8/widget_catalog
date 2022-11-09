import 'package:flutter/material.dart';

// ICONBUTTON is used for interactive icon.

class Icon_Widget extends StatelessWidget {
  const Icon_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Card(
          elevation: 5,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blueGrey,
            ),
            child: Padding(
              padding: const EdgeInsets.all(30),
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
          ),
        ),
      ),
    ));
  }
}
