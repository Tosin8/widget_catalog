import 'package:flutter/material.dart';

class Animated_Align extends StatefulWidget {
  const Animated_Align({super.key});

  @override
  State<Animated_Align> createState() => _Animated_AlignState();
}

class _Animated_AlignState extends State<Animated_Align> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selected = !selected;
        });
      },
      child: Center(
          child: Container(
              width: 250,
              height: 250.0,
              color: Colors.red,
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.centerLeft,
                duration: const Duration(seconds: 2),
                curve: Curves.fastOutSlowIn,
                child: const FlutterLogo(size: 50),
              ))),
    );
  }
}
