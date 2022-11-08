// each child of a page view is forced to be the same size as the viewport.

//1. Using PageController to control which page is visible in the view and also helps in controling the initial page with VIEWPORTFRACTION - which determines the size of the pages as a fraction of the viewport size.

import 'package:flutter/material.dart';

class PageView_Widget extends StatefulWidget {
  const PageView_Widget({super.key});

  @override
  State<PageView_Widget> createState() => _PageView_WidgetState();
}

class _PageView_WidgetState extends State<PageView_Widget> {
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
