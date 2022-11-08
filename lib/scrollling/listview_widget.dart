// 4 options for constructing listView:
// 1. the default constructor - taking an explicit list - widget.
// 2. listview.builder - it takes an IndexedWidgetBuilder, which builds the children on demand, appropriate for list with views with a large - infinite number of children.
// 3. listview.separated - it takes two indexedWidgetBuilders: itemBuilder builds child items on demand, and separatorBuilder, similarly builds separator children which appear in between the child items.
// 4. listview.custom - it takes SliverChildDelegate, which provides the ability to customize additional aspects of the child model.

// DEFAULT CONSTRUCTOR.

// class ListView_Widgs extends StatefulWidget {
//   const ListView_Widgs({super.key});

//   @override
//   State<ListView_Widgs> createState() => _ListView_WidgsState();
// }

// class _ListView_WidgsState extends State<ListView_Widgs> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView(padding: const EdgeInsets.all(8), children: [
//       Container(
//         height: 50,
//         color: Colors.amber[600],
//         child: const Center(child: Text('Entry A')),
//       ),
//       Container(
//         height: 50,
//         color: Colors.amber[500],
//         child: const Center(child: Text('Entry B')),
//       ),
//       Container(
//           height: 50,
//           color: Colors.amber[100],
//           child: const Center(
//             child: Text('Entry C'),
//           )),
//     ]));
//   }
// }

// LISTVIEW BUILDER

// import 'package:flutter/material.dart';

// class LsitView_Widgs extends StatefulWidget {
//   const LsitView_Widgs({super.key});

//   @override
//   State<LsitView_Widgs> createState() => _LsitView_WidgsState();
// }

// class _LsitView_WidgsState extends State<LsitView_Widgs> {
//   final List<String> entries = ['A', 'B', 'C'];
//   final List<int> colorCodes = [600, 500, 100];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//           padding: const EdgeInsets.all(8),
//           itemCount: entries.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               height: 50,
//               color: Colors.amber[colorCodes[index]],
//               child: Center(child: Text('Entry ${entries[index]}')),
//             );
//           }),
//     );
//   }
// }

// LISTVIEW.SEPARATOR
import 'package:flutter/material.dart';

class ListView_Builder extends StatefulWidget {
  const ListView_Builder({super.key});

  @override
  State<ListView_Builder> createState() => _ListView_BuilderState();
}

class _ListView_BuilderState extends State<ListView_Builder> {
  final List<String> entries = ['A', 'B', 'C'];
  final List<int> colorCodes = [600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 50,
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text('Entry ${entries[index]}')),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            }));
  }
}
