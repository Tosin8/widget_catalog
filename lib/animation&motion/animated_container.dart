import 'package:flutter/material.dart';

class animated_container extends StatefulWidget {
  const animated_container({super.key});

  @override
  State<animated_container> createState() => _animated_containerState();
}

class _animated_containerState extends State<animated_container> {
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
          child: AnimatedContainer(
        width: selected ? 200 : 100,
        height: selected ? 100 : 200,
        color: selected ? Colors.blue : Colors.yellow,
        duration: const Duration(seconds: 3),
        curve: Curves.fastOutSlowIn,
        child: const FlutterLogo(size: 20),
      )),
    );
  }
}
