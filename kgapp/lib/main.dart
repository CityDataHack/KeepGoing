import 'package:flutter/material.dart';
import './tree.dart' as tree;

void main() {
  runApp(new TabBarDemo());
}

class TabBarDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: 4,
        child: new Scaffold(
          appBar: new AppBar(
            bottom: new TabBar(
              tabs: [
                new Tab(icon: new Icon(Icons.track_changes)),
                new Tab(icon: new Icon(Icons.chat)),
                new Tab(icon: new Icon(Icons.map)),
                new Tab(icon: new Icon(Icons.accessibility_new)),
              ],
            ),
            title: new Text('Keep Going'),
          ),
          body: new TabBarView(
            children: <Widget>[
              new tree.Tree(),
              new Icon(Icons.directions_transit),
              new Icon(Icons.directions_bike),
              new Icon(Icons.directions_bike),
            ],
          ),
        ),
      ),
    );
  }
}
