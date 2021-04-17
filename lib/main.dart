
import 'package:flutter/material.dart';
import 'package:pixaflip/fragments/Home.dart';
import 'package:pixaflip/fragments/Profile.dart';
import 'package:pixaflip/fragments/FavPdf.dart';
import 'package:pixaflip/pages/AllPdf.dart';
import 'package:pixaflip/pages/MyVideoPlayer.dart';
import 'package:pixaflip/pages/PdfView.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      "/": (context) => Home(),
      "/Profile": (context) => Profile(),
      "/FavPdf": (context) => FavPdf(),
      "/AllPdf": (context) => AllPdf(),
      "/PdfView": (context) => PdfViewer(),
      "/MyVideoPlayer": (context) => MyVideoPlayer(),
    },
  ));
}
