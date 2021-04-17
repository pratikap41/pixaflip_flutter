import 'package:flutter/material.dart';
import 'package:pixaflip/ProfileField.dart';

class ProfileFieldsUI extends StatelessWidget {

  ProfileField pf;
  ProfileFieldsUI({this.pf});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              pf.icon,
              color: Colors.grey[400],
              size: 30.0,
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${pf.field}',
                  style: TextStyle(
                    letterSpacing: 1.2,
                    fontWeight: FontWeight.bold,
                    fontSize: 13.0,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  '${pf.fieldValue}',
                  style: TextStyle(
                    letterSpacing: 1.5,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider(height: 20.0, color: Colors.grey[200],)
      ],
    );
  }
}




