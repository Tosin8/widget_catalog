import 'package:flutter/material.dart';

class RichText_Widget extends StatelessWidget {
  const RichText_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: RichText(
          text: TextSpan(
              text: 'Hello',
              style: DefaultTextStyle.of(context).style,
              children: const [
            TextSpan(
                text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
            TextSpan(text: 'world')
          ])),
    ));
  }
}
