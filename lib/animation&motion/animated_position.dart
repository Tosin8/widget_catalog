import 'package:flutter/material.dart';

// Disclaimer: Only works if it's the child of a stack. The widget is a good choice if the size of the child would end up changing as a result of this animation.  If the size is intended to remain the same with only the position changing over time, consider using SlideTransition.

// SlideTransition - only triggers a repaint each frame of the animation whereas - AnimatedPosition will trigger a relayout as well.

class Animated_Positioning extends StatefulWidget {
  const Animated_Positioning({super.key});

  @override
  State<Animated_Positioning> createState() => _Animated_PositioningState();
}

class _Animated_PositioningState extends State<Animated_Positioning> {
  bool selected = false;
  var duration = const Duration(seconds: 2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
            width: 300,
            height: 400,
            child: Stack(
              children: [
                AnimatedPositioned(
                    width: selected ? 200.0 : 50.0,
                    height: selected ? 50.0 : 200.0,
                    top: selected ? 50.0 : 150.0,
                    duration: duration,
                    curve: Curves.fastOutSlowIn,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selected = !selected;
                        });
                      },
                      child: Container(
                          color: Colors.blue,
                          child: const Center(child: Text('Tap me'))),
                    )),
                Container(
                  width: 100,
                  height: 80,
                  color: Colors.green,
                  child: const Center(
                    child: Text('Hello', style: TextStyle(color: Colors.white)),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
