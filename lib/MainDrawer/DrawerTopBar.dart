import 'dart:ffi';

import 'package:flutter/material.dart';

class DrawerTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(16.0,60.0, 16.0, 16.0 ),
      color: Theme.of(context).primaryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile_image.png'),
            radius: 30.0,
          ),
          SizedBox(height: 10.0,),
          Text(
              'Pratik Patil',
              style: TextStyle(
              fontSize: 16,
              letterSpacing: 1.5,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          Text(
              'Pratikap41@gmail.com',
              style: TextStyle(
                color: Colors.white,
              ),
          )
        ],
      ),
    );
  }
}
