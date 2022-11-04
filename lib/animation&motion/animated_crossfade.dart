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
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: AnimatedCrossFade(
        duration: const Duration(seconds: 3),
        firstCurve: Curves.easeOut,
        secondCurve: Curves.easeIn,
        sizeCurve: Curves.bounceOut,
        firstChild: const Text('hello'),
        secondChild: const Text('goodbye'),
        crossFadeState:
            selected ? CrossFadeState.showFirst : CrossFadeState.showSecond,
      ),
    );
  }
}
