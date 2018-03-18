import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new DecoratedBox(
      decoration: new BoxDecoration (
        image: new DecorationImage(
          image: new AssetImage('assets/barkmap.png'),
              ),
      ),
    );
  }
}
