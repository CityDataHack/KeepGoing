import 'package:flutter/material.dart';
import 'tree.dart' as tree;
import 'map.dart' as map;
import 'newchat.dart' as newchat;
import 'profile.dart' as profile;
import 'login/login_page.dart';
import 'login/home_page.dart';

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
                new Tab(icon: new Icon(Icons.accessibility_new)),
                new Tab(icon: new Icon(Icons.track_changes)),
                new Tab(icon: new Icon(Icons.chat)),
                new Tab(icon: new Icon(Icons.map)),
              ],
            ),
            title: new Text('Keep Going'),
            backgroundColor: Colors.deepOrange,
          ),
          body: new TabBarView(
            children: <Widget>[
              new LoginPage(),
              new tree.Tree(),
              new newchat.ChatScreen(),
              new map.Map(),
            ],
          ),
        ),
      ),
    );
  }
}
