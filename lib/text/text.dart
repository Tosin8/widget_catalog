import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // default text style is hello.
        body: Center(

            // TEXTRICH WIDGET.
            // child: Text.rich(TextSpan(text: 'Hello', children: [
            //   TextSpan(
            //       text: 'beautiful', style: TextStyle(fontStyle: FontStyle.italic)),
            //   TextSpan(text: 'world', style: TextStyle(fontWeight: FontWeight.bold))
            // ])),

            child: SelectionArea(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text('Selectable text'),
        SelectionContainer.disabled(child: Text('Non-selectable text')),
        Text('Selectable text'),
      ],
    ))));
  }
}

// Using a GestureDector widget for interactivity, or rather using a TextButton instead .
// Disclaimer: to make sections of the text interactive, use RICHTEXT and specify a TapGesture.

// SELECTION - to making text selected, using the SelectionArea widget and to exclude using the SelectionContainer.disabled.
