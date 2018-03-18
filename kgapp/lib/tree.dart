import 'package:flutter/material.dart';

class Tree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DecoratedBox(
      decoration: new BoxDecoration (
        image: new DecorationImage(
          image: new AssetImage('assets/tree.jpeg'),
              ),
      ),
    );
  }
}
