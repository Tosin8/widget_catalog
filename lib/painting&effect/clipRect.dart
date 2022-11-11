import 'package:flutter/material.dart';

// UNDERSTANDING THE FOLLOWING:
//1. ClipRRect - for a clip with rounded corners.
//2. ClipOval - for an elliptical clip.
// 3. ClipPath - for an arbitrarily shaped clip.
// 4. CustomClipper - for information about creating custom clips.

class Clip_Widget extends StatefulWidget {
  const Clip_Widget({super.key});

  @override
  State<Clip_Widget> createState() => _Clip_WidgetState();
}

class _Clip_WidgetState extends State<Clip_Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(color: Colors.green),
    ));
  }
}
