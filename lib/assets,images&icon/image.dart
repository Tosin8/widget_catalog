import 'dart:ui';

import 'package:flutter/material.dart';

// ignore: camel_case_types
class Image_Widget extends StatelessWidget {
  const Image_Widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ImageFiltered(
        imageFilter: ImageFilter.blur(sigmaX: 1),
        child: Image.network('https://unsplash.com/photos/ PhYq704ffdA',
            colorBlendMode: BlendMode.darken, semanticLabel: 'This is a bird',
            loadingBuilder: (context, child, progress) {
          return progress == null ? child : const LinearProgressIndicator();
        }),
      ),
    );
  }
}
