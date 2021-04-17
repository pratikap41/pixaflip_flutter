
import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:pixaflip/utils/DatabaseHelper.dart';

class PdfCard extends StatefulWidget {
  final String url, name, description;
  bool isFav;

  PdfCard({this.url, this.name, this.description, this.isFav});

  @override
  _PdfCardState createState() => _PdfCardState();
}

class _PdfCardState extends State<PdfCard> {

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(5.0),
      child: ListTile(
        onTap: (){
          Navigator.pushNamed(context, "/PdfView",  arguments: {"url": widget.url, "name": widget.name});
        },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        tileColor: Colors.grey[100],
        leading: Image(
          image: AssetImage('assets/pdf.png'),
        ),
        title: Text(
            '${widget.name}',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 15.0,
              letterSpacing: 1.0,
            ),
        ),
        subtitle: Text('${widget.description}'),
        trailing: StarButton(
          isStarred: widget.isFav,
          iconSize: 40.0,
          valueChanged: (_isFav) async{
            DatabaseHelper db = DatabaseHelper();
            print(await db.update(widget.name, _isFav?1:0));
          },
        ),
      ),
    );
  }
}
