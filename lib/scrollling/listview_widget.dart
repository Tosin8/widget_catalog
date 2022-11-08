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
// import 'package:flutter/material.dart';

// class ListView_Builder extends StatefulWidget {
//   const ListView_Builder({super.key});

//   @override
//   State<ListView_Builder> createState() => _ListView_BuilderState();
// }

// class _ListView_BuilderState extends State<ListView_Builder> {
//   final List<String> entries = ['A', 'B', 'C'];
//   final List<int> colorCodes = [600, 500, 100];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView.separated(
//             padding: const EdgeInsets.all(8),
//             itemCount: entries.length,
//             itemBuilder: (BuildContext context, int index) {
//               return Container(
//                 height: 50,
//                 color: Colors.amber[colorCodes[index]],
//                 child: Center(child: Text('Entry ${entries[index]}')),
//               );
//             },
//             separatorBuilder: (BuildContext context, int index) {
//               return const Divider();
//             }));
//   }
// }

// SELECTION OF LIST ITEMS
import 'package:flutter/material.dart';

class ListTileSelectExample extends StatefulWidget {
  const ListTileSelectExample({super.key});

  @override
  ListTileSelectExampleState createState() => ListTileSelectExampleState();
}

class ListTileSelectExampleState extends State<ListTileSelectExample> {
  bool isSelectionMode = false;
  final int listLength = 30;
  late List<bool> _selected;
  bool _selectAll = false;
  bool _isGridMode = false;

  @override
  void initState() {
    super.initState();
    initializeSelection();
  }

  void initializeSelection() {
    _selected = List<bool>.generate(listLength, (_) => false);
  }

  @override
  void dispose() {
    _selected.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'ListTile selection',
          ),
          leading: isSelectionMode
              ? IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () {
                    setState(() {
                      isSelectionMode = false;
                    });
                    initializeSelection();
                  },
                )
              : const SizedBox(),
          actions: <Widget>[
            if (_isGridMode)
              IconButton(
                icon: const Icon(Icons.grid_on),
                onPressed: () {
                  setState(() {
                    _isGridMode = false;
                  });
                },
              )
            else
              IconButton(
                icon: const Icon(Icons.list),
                onPressed: () {
                  setState(() {
                    _isGridMode = true;
                  });
                },
              ),
            if (isSelectionMode)
              TextButton(
                  child: !_selectAll
                      ? const Text(
                          'select all',
                          style: TextStyle(color: Colors.white),
                        )
                      : const Text(
                          'unselect all',
                          style: TextStyle(color: Colors.white),
                        ),
                  onPressed: () {
                    _selectAll = !_selectAll;
                    setState(() {
                      _selected =
                          List<bool>.generate(listLength, (_) => _selectAll);
                    });
                  }),
          ],
        ),
        body: _isGridMode
            ? GridBuilder(
                isSelectionMode: isSelectionMode,
                selectedList: _selected,
                onSelectionChange: (bool x) {
                  setState(() {
                    isSelectionMode = x;
                  });
                },
              )
            : ListBuilder(
                isSelectionMode: isSelectionMode,
                selectedList: _selected,
                onSelectionChange: (bool x) {
                  setState(() {
                    isSelectionMode = x;
                  });
                },
              ));
  }
}

class GridBuilder extends StatefulWidget {
  const GridBuilder({
    super.key,
    required this.selectedList,
    required this.isSelectionMode,
    required this.onSelectionChange,
  });

  final bool isSelectionMode;
  final Function(bool)? onSelectionChange;
  final List<bool> selectedList;

  @override
  GridBuilderState createState() => GridBuilderState();
}

class GridBuilderState extends State<GridBuilder> {
  void _toggle(int index) {
    if (widget.isSelectionMode) {
      setState(() {
        widget.selectedList[index] = !widget.selectedList[index];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: widget.selectedList.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (_, int index) {
          return InkWell(
            onTap: () => _toggle(index),
            onLongPress: () {
              if (!widget.isSelectionMode) {
                setState(() {
                  widget.selectedList[index] = true;
                });
                widget.onSelectionChange!(true);
              }
            },
            child: GridTile(
                child: Container(
              child: widget.isSelectionMode
                  ? Checkbox(
                      onChanged: (bool? x) => _toggle(index),
                      value: widget.selectedList[index])
                  : const Icon(Icons.image),
            )),
          );
        });
  }
}

class ListBuilder extends StatefulWidget {
  const ListBuilder({
    super.key,
    required this.selectedList,
    required this.isSelectionMode,
    required this.onSelectionChange,
  });

  final bool isSelectionMode;
  final List<bool> selectedList;
  final Function(bool)? onSelectionChange;

  @override
  State<ListBuilder> createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  void _toggle(int index) {
    if (widget.isSelectionMode) {
      setState(() {
        widget.selectedList[index] = !widget.selectedList[index];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.selectedList.length,
        itemBuilder: (_, int index) {
          return ListTile(
              onTap: () => _toggle(index),
              onLongPress: () {
                if (!widget.isSelectionMode) {
                  setState(() {
                    widget.selectedList[index] = true;
                  });
                  widget.onSelectionChange!(true);
                }
              },
              trailing: widget.isSelectionMode
                  ? Checkbox(
                      value: widget.selectedList[index],
                      onChanged: (bool? x) => _toggle(index),
                    )
                  : const SizedBox.shrink(),
              title: Text('item $index'));
        });
  }
}
