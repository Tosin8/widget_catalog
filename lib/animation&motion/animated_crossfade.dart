import 'package:flutter/material.dart';

class animated_crossfading extends StatefulWidget {
  const animated_crossfading({super.key});

  @override
  State<animated_crossfading> createState() => _animated_crossfadingState();
}

class _animated_crossfadingState extends State<animated_crossfading> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedCrossFade(
            duration: const Duration(seconds: 3),
            firstCurve: Curves.easeOut,
            secondCurve: Curves.easeIn,
            sizeCurve: Curves.bounceOut,
            firstChild: const Text('hello',
                style: TextStyle(fontSize: 30, color: Colors.green)),
            secondChild: const Text(
              'goodbye',
              style: TextStyle(
                fontSize: 30,
                color: Colors.blue,
              ),
            ),
            crossFadeState:
                selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
          ),
        ),
      ),
    );
  }
}
