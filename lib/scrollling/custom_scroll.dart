// a ScrolView that creates custom scroll effects using slivers.

// Using the following silvers: SilverAppBar, SilverList and SliverGird, to create a scroll view that contains an expanding app bar followed by alist and a grid.

import 'package:flutter/material.dart';

class Custom_ScrollWidg extends StatefulWidget {
  const Custom_ScrollWidg({super.key});

  @override
  State<Custom_ScrollWidg> createState() => _Custom_ScrollWidgState();
}

class _Custom_ScrollWidgState extends State<Custom_ScrollWidg> {
  List<int> top = <int>[];
  List<int> bottom = <int>[0];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');
    return Scaffold(
        appBar: AppBar(
            title: const Text('Press on the plus to add items above and below'),
            leading: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    top.add(-top.length - 1);
                    bottom.add(bottom.length);
                  });
                })),
        body: CustomScrollView(
          center: centerKey,
          slivers: [
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.blue[200 + bottom[index] % 4 * 100],
                  height: 100 + bottom[index] % 4 * 20.0,
                  child: Text('Item: ${bottom[index]}'),
                );
              },
              childCount: bottom.length,
            ))
          ],
        ));
  }
}
