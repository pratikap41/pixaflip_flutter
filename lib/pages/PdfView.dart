import 'package:flutter/material.dart';
import 'package:pdf_flutter/pdf_flutter.dart';



class PdfViewer extends StatefulWidget {
  @override
  _PdfViewerState createState() => _PdfViewerState();
}

class _PdfViewerState extends State<PdfViewer> {

  Map data;
  @override
  void initState() {
    super.initState();
    setState(() {
      // data = ModalRoute.of(context).settings.arguments;
      print('============================Error here');
    });
  }

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('${data['name']}'),
      ),
      body: Container(
        child: PDF.network(
            data['url'],
            width: double.infinity,
            height: double.infinity,
        ),
      ),
    );
  }
}

