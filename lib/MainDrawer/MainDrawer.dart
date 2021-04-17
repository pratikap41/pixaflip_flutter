import 'package:flutter/material.dart';

import 'package:pixaflip/MainDrawer/DrawerMenu.dart';
import 'package:pixaflip/MainDrawer/DrawerTopBar.dart';

class MainDrawer extends StatefulWidget {
  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          children: <Widget>[
            DrawerTopBar(),
            DrawerMenu(),
          ],
        ),
    );
  }
}
