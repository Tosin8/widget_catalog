import 'package:flutter/material.dart';

// ignore: camel_case_types
class BackDrop_Filter extends StatefulWidget {
  const BackDrop_Filter({super.key});

  @override
  State<BackDrop_Filter> createState() => _BackDrop_FilterState();
}

class _BackDrop_FilterState extends State<BackDrop_Filter> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      fit: StackFit.expand,
      children: [
        Text('0' * 1000),
        Center(
          child: ClipRect(
              child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 200.0,
                    child: const Text('Hello World'),
                  ))),
        )
      ],
    ));
  }
}
