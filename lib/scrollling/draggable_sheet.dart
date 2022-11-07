import 'package:flutter/material.dart';

class DragScroll extends StatefulWidget {
  const DragScroll({super.key});

  @override
  State<DragScroll> createState() => _DragScrollState();
}

class _DragScrollState extends State<DragScroll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SizedBox.expand(child: DraggableScrollableSheet(
        builder: (BuildContext context, ScrollController scrollController) {
      return Container(
          color: Colors.blue,
          child: ListView.builder(
              controller: scrollController,
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(title: Text('Item $index'));
              }));
    })));
  }
}
