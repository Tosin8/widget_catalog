import 'package:flutter/material.dart';

class Padding_Widget extends StatelessWidget {
  const Padding_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Card(
            child: Padding(
                padding: EdgeInsets.all(16), child: Text('Hello World'))));
  }
}
