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
              size: 35.0,
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${pf.field}',
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(height: 5,),
                Text(
                  '${pf.fieldValue}',
                  style: TextStyle(
                    letterSpacing: 1.2,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          ],
        ),
        Divider(height: 20.0,)
      ],
    );
  }
}




