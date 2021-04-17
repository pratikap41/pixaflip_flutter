import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.home),
          title: Text('Home'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, "/");
          },
        ),
        ListTile(
          leading: Icon(Icons.account_box),
          title: Text('Profile'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, "/Profile");
          },
        ),
        ListTile(
          leading: Icon(Icons.star_border),
          title: Text('Favourite'),
          onTap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, "/FavPdf");
          },
        )
      ],
    );
  }
}
