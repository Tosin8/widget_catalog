import 'package:flutter/material.dart';

class HomePage_Shrine extends StatefulWidget {
  const HomePage_Shrine({super.key});

  @override
  State<HomePage_Shrine> createState() => _HomePage_ShrineState();
}

class _HomePage_ShrineState extends State<HomePage_Shrine> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SHINE'),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: 'menu',
          ),
          onPressed: () {
            print('Menu button');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, semanticLabel: 'search'),
            onPressed: () {
              print('Search button');
            },
          ),
          IconButton(
            icon: const Icon(Icons.tune, semanticLabel: 'filter'),
            onPressed: () {
              print('Filter button');
            },
          ),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: const EdgeInsets.all(16.0),
        childAspectRatio: 8.0 / 9.0,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AspectRatio(
                  aspectRatio: 18.0 / 11.0,
                  child: Image.asset('assets/image/diamond.png'),
                ),
                Padding(
                    padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Title'),
                        SizedBox(height: 8.0),
                        Text('Secondary Text'),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
