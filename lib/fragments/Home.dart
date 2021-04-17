import 'package:flutter/material.dart';
import 'package:pixaflip/MainDrawer/MainDrawer.dart';
import 'package:pixaflip/SquareButton.dart';
import 'package:pixaflip/utils/DatabaseHelper.dart';
import 'package:pixaflip/utils/DatabaseHelper.dart';

import '../Pdf.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState()  {
    super.initState();
    _initDB();
  }

  void _initDB() async{
    DatabaseHelper dbHelper = DatabaseHelper();
    List a = await dbHelper.getAll();
    print(a.isEmpty);
    if(a.isEmpty){
      await dbHelper.add(Pdf("https://agendaweb.org/pdf/animals-1.pdf", "Animals", "Pdf About Animals", false));
      await dbHelper.add(Pdf("https://www.healthpromotion.ie/hp-files/docs/HPM00796.pdf", "Food", "Pdf About Food", false));
      await dbHelper.add(Pdf("http://exam.unipune.ac.in/Docs/Timetables/April14/Cert_course_Forensic_2014.pdf", "TimeTable", "Pdf of next week timetable", false));
      await dbHelper.add(Pdf("https://www.hrwstf.org/mobile_library/r2etoolkit/country_project.pdf", "Countries", "Pdf about countires", false));
      await dbHelper.add(Pdf("http://exam.unipune.ac.in/Docs/Timetables/April14/DLL_Lw.pdf", "Notice", "Covid-19 notice", false));
    }

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Home'
        ),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Container(
          width: double.infinity,
          height: 140.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
               SquareButton(
                 onTap: (){
                   Navigator.pushNamed(context, "/AllPdf");
                 },
                 color: Colors.grey[100],
                 title: 'Show PDF',
                 image: 'assets/pdf.png',
               ),
               SquareButton(
                 onTap: (){
                      Navigator.pushNamed(context, "/MyVideoPlayer");
                 },
                 color: Colors.grey[100],
                 title: 'Play Video',
                 image: 'assets/ic_play.png',
               ),
            ],
          ),
        ),
      ),
    );
  }
}
