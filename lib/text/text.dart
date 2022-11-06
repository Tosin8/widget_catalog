import 'package:flutter/material.dart'; 

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        Text('Hello, $_name! How are you? ', textAlign: TextAlign.center, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold), 
        )
      )
    );
  }
}