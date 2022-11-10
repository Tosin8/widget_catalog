import 'package:flutter/material.dart';

class SliverAppBarExample extends StatefulWidget {
  const SliverAppBarExample({super.key});

  @override
  State<SliverAppBarExample> createState() => _SliverAppBarExampleState();
}

class _SliverAppBarExampleState extends State<SliverAppBarExample> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      pinned: _pinned,
      snap: _snap,
      floating: _floating,
      expandedHeigth: 120,
      flexibleSpace: const FlexibleSpaceBar(
        title: Text('SliverAppBar'),
        background: FlutterLogo(),
      ),
      const SliverToBoxAdapter(
        child: SizedBox(
          height: 20,
          child: Center(child: Text('Scroll to see the Sliver')),
        ),
      ),
      SliverList(delegate: SliverChildBuilderDelegate(BuildContext context, int index) {
        return Container(
          color: index.isOdd ? Colors.white: Colors.12, 
          height: 100.0, 
          child: Center(child: Text('$index', textScaleFactor: 5),
          ), 
        ); 
      })
    );
  }
}
