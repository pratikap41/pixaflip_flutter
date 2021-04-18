import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {

  Function onTap = null;
  String image;
  String title;
  Color color ;

  SquareButton({this.onTap, this.image, this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Card(
        color: color,
        child: InkWell(
          onTap: (){
              this.onTap();
          },
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("$image"),
                  width: 50.0,
                  height: 50.0,
                ),
                SizedBox(height: 10.0,),
                Text(
                  '$title',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
