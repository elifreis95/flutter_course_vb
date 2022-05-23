import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  ListViewLearn({Key? key}) : super(key: key);

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          FittedBox(
            child: Text(
              'Hello World',
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  ?.copyWith(color: Colors.blueGrey),
              maxLines: 1,
            ),
          ),
          Container(color: Colors.blueGrey, height: 300),
          Divider(),
          SizedBox(
            height: 300,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              Container(color: Colors.lime, width: 100),
              Container(color: Colors.blueGrey, width: 100),
              Container(color: Colors.lime, width: 100),
              Container(color: Colors.blueGrey, width: 100),
              Container(color: Colors.lime, width: 100),
            ]),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.close)),
          _ListDemo()
        ],
      ),
    );
  }
}

class _ListDemo extends StatefulWidget {
  _ListDemo({Key? key}) : super(key: key);

  @override
  State<_ListDemo> createState() => __ListDemoState();
}

class __ListDemoState extends State<_ListDemo> {
  @override
  void initState() {
    print('Hello');
    super.initState();
  }

  @override
  void dispose() {
    print('Exit');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
