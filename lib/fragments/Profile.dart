
import 'package:flutter/material.dart';
import 'package:pixaflip/MainDrawer/MainDrawer.dart';
import '../ProfileField.dart';
import '../ProfileFieldUI.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  List<ProfileField> profileInfo ;

  @override
  void initState() {
    profileInfo = [
      ProfileField(
          field: 'Email',
          fieldValue: 'pratikap41@gmail.com',
          icon: Icons.email
      ),
      ProfileField(
          field: 'Name',
          fieldValue: 'Pratik Patil',
          icon: Icons.account_circle_rounded
      ),
      ProfileField(
          field: 'Number',
          fieldValue: '9960141806',
          icon: Icons.call
      ),
      ProfileField(field: 'Age',
          fieldValue: '20',
          icon: Icons.access_time
      ),
      ProfileField(field: 'College',
          fieldValue: 'SKNCOE',
          icon: Icons.school
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children:  <Widget>[
          Container(
            width: double.infinity,
            height: 206.0,
            padding: EdgeInsets.fromLTRB(16.0,16.0, 16.0, 16.0 ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/bg.jpg'),
                fit: BoxFit.fill,
              )
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage('assets/profile_image.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Text(
                  'Pratik Patil',
                  style: TextStyle(
                    fontSize: 16,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
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
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            children:
            profileInfo.map((pf)=>ProfileFieldsUI(pf:pf)).toList(),
        ),
          ),
        ]
      );
  }
}
