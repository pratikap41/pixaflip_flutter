import 'package:flutter/material.dart';

import 'package:pixaflip/MainDrawer/DrawerMenu.dart';
import 'package:pixaflip/MainDrawer/DrawerTopBar.dart';

class MainDrawer extends StatefulWidget {
  Function onTap ;
  int selectedFragment;
  MainDrawer({ @required this.onTap, @required this.selectedFragment});

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
            SizedBox(height: 10,),
            DrawerMenu(
              selectedFragment: widget.selectedFragment,
              onTap: widget.onTap,
            ),
          ],
        ),
    );
  }
}
