import 'package:flutter/material.dart';
import 'package:pixaflip/Pdf.dart';
import 'package:pixaflip/utils/DatabaseHelper.dart';
import '../PdfCard.dart';

class FavPdf extends StatefulWidget {
  @override
  _FavPdfState createState() => _FavPdfState();
}

class _FavPdfState extends State<FavPdf> {

  List<Pdf> pdf = [];
  List<Pdf> pdfFav= [];
  bool _isLoading = true;
  @override
  void initState() {
    _initPdf();
    super.initState();
  }

  void _initPdf() async{
    setState(() {
      _isLoading =true;
    });
    DatabaseHelper dbHelper = DatabaseHelper();
    pdf = await dbHelper.getAll();
    setState(() {
      for(int i=0; i<pdf.length; i++){
        if(pdf[i].isFav){
          pdfFav.add(pdf[i]);
        }
      }
      _isLoading =false;
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite'),
      ),
      body: _isLoading?Center(child: CircularProgressIndicator(),):
      ListView.builder(
        itemBuilder: (context,  index){
          return PdfCard(
            isFav: pdfFav[index].isFav ,
            url: pdfFav[index].url,
            name: pdfFav[index].name,
            description: pdfFav[index].description,
          );
        },
        itemCount: pdfFav.length,
      ),
    );

  }
}
