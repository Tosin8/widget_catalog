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
    return Center(
        child: Container(
            width: 250,
            height: 250.0,
            color: Colors.red,
            child: AlimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.centerLeft,
              duration: Duration(seconds: 2),
              curve: Curves.bounceInout,
              child: FlutterLogo(size: 20),
            )));
  }
}
