import 'package:flutter/material.dart';
import 'package:pixaflip/Pdf.dart';
import 'package:pixaflip/utils/DatabaseHelper.dart';

import '../PdfCard.dart';

class AllPdf extends StatefulWidget {
  @override
  _AllPdfState createState() => _AllPdfState();
}

class _AllPdfState extends State<AllPdf> {

  List<Pdf> pdf;
  bool _isLoading = true;
  @override
  void initState() {
    pdf = [];
    _initPdf();
    super.initState();
  }

  void _initPdf() async{
    setState(() {
      _isLoading =true;
    });
    DatabaseHelper dbHelper = DatabaseHelper();
    pdf = await dbHelper.getAll();
    print('==========================================');
    print(pdf);
    setState(() {
      _isLoading =false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All PDF'),
      ),
      body: _isLoading?Center(child: CircularProgressIndicator(),):
      ListView.builder(
          itemBuilder: (context,  index){
            return PdfCard(
                isFav: pdf[index].isFav ,
                url: pdf[index].url,
                name: pdf[index].name,
                description: pdf[index].description,
            );
          },
          itemCount: pdf.length,
      ),
      );

  }
}
