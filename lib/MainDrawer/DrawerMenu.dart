import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  Function onTap ;
  int selectedFragment;
  DrawerMenu({ @required this.onTap, @required this.selectedFragment});

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          selectedTileColor: Colors.blue.withOpacity(0.2),
          selected: widget.selectedFragment==0?true:false,
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.pop(context);
            widget.onTap(0);
          },
        ),
        ListTile(
          selectedTileColor: Colors.blue.withOpacity(0.2),
          selected: widget.selectedFragment==1?true:false,
          leading: Icon(Icons.account_box),
          title: Text('Profile'),
          onTap: () {
            Navigator.pop(context);
            widget.onTap(1);
          },
        ),
        ListTile(
          selectedTileColor: Colors.blue.withOpacity(0.2),
          selected: widget.selectedFragment==2?true:false,
          leading: Icon(Icons.star_border),
          title: Text('Favourite'),
          onTap: () {
            Navigator.pop(context);
            widget.onTap(2);
          },
        )
      ],
    );
  }
}
