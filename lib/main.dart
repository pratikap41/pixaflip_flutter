
import 'package:flutter/material.dart';
import 'package:pixaflip/MainDrawer/MainDrawer.dart';
import 'package:pixaflip/fragments/Home.dart';
import 'package:pixaflip/fragments/Profile.dart';
import 'package:pixaflip/fragments/FavPdf.dart';
import 'package:pixaflip/pages/AllPdf.dart';
import 'package:pixaflip/pages/MyVideoPlayer.dart';
import 'package:pixaflip/pages/PdfView.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    routes: {
      "/": (context) => Main(),
      "/Profile": (context) => Profile(),
      "/FavPdf": (context) => FavPdf(),
      "/AllPdf": (context) => AllPdf(),
      "/PdfView": (context) => PdfViewer(),
      "/MyVideoPlayer": (context) => MyVideoPlayer(),
    },
  ));
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {

  int selectedFragment = 0;

  static final List<Widget> fragments = [
    Home(),
    Profile(),
    FavPdf()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PixaFlip'),
      ),
      drawer: MainDrawer(
        selectedFragment: selectedFragment,
        onTap: (index) {
          setState(() {
            selectedFragment = index;
          });
        },
      ),
      body: fragments[selectedFragment],
    );
  }
}

