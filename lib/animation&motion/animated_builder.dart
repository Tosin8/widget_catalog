// using the animated builder is useful for more complex widgets that wish to inlude an animation as part of a larger build function. - a general purpose widget for building animations.

// Constructing the widget and pass it a builder function making it assesible to using animatedBuilder.

import 'dart:math' as math;
import 'package:flutter/material.dart';

class animated_builder extends StatefulWidget {
  const animated_builder({super.key});

  @override
  State<animated_builder> createState() => _animated_builderState();
}

class _animated_builderState extends State<animated_builder>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 10),
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.green,
            child: const Center(
              child: Text('Whee!'),
            )),
        builder: (context, child) {
          return Transform.rotate(
            angle: _controller.value * 2.0 * math.pi,
            child: child,
          );
        },
      ),
    );
  }
}
