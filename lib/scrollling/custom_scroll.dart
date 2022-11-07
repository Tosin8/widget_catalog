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
    return Scaffold(
      appBar:AppBar(title: const Text('Press on the plus to add items above and below'; 
      leading: IconButton(icon: Icon(Icons.add), 
      onPressed: ()) )) ,)
  }
}
