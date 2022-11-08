// each child of a page view is forced to be the same size as the viewport.

//1. Using PageController to control which page is visible in the view and also helps in controling the initial page with VIEWPORTFRACTION - which determines the size of the pages as a fraction of the viewport size.

import 'package:flutter/material.dart';

class MyStatelessWidget extends StatefulWidget {
  const MyStatelessWidget({super.key});

  @override
  State<MyStatelessWidget> createState() => _MyStatelessWidgetState();
}

class _MyStatelessWidgetState extends State<MyStatelessWidget> {
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return PageView(controller: controller, children: const [
      Center(
        child: Text('First Page'),
      ),
      Center(child: Text('Second Page')),
      Center(
        child: Text('Third Page'),
      ),
    ]);
  }
}
