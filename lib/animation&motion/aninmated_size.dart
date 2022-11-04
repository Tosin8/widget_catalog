import 'package:flutter/material.dart';

class Animated_Sizing extends StatefulWidget {
  const Animated_Sizing({super.key});

  @override
  State<Animated_Sizing> createState() => _Animated_SizingState();
}

class _Animated_SizingState extends State<Animated_Sizing> {
  bool _large = false;
  final double _size = 50.0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _large = !_large;
        });
      },
      child: Container(
        color: Colors.amberAccent,
        child: AnimatedSize(
          duration: const Duration(seconds: 1),
          curve: Curves.easeIn,
          child: FlutterLogo(size: _size),
        ),
      ),
    );
  }
}
