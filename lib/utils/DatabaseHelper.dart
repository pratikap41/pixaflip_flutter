import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

import '../Pdf.dart';

class DatabaseHelper{
  static DatabaseHelper _databaseHelper;
  Database _database;

  final String DB_NAME = 'pdf.db';
  final String TABLE_NAME = 'pdf';
  final String COL_ID = 'id';
  final String COL_URL ='url';
  final String COL_NAME ='name';
  final String COL_DESCRIPTION ='description';
  final String COL_ISFAV = 'isfav';

  DatabaseHelper._initDatabaseHelper();

  factory DatabaseHelper(){
    if(_databaseHelper == null){
      _databaseHelper = DatabaseHelper._initDatabaseHelper();
    }
    return _databaseHelper;
  }

  Future<Database> get database async{
    if(_database == null){
      _database = await _initDatabase();
    }
    return _database;
  }

  Future<Database> _initDatabase() async{
    Directory  directory = await getApplicationDocumentsDirectory();
    String path = directory.path + DB_NAME ;
    return await openDatabase(path, version: 1, onCreate : _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async{
      await db.execute('''CREATE TABLE $TABLE_NAME( $COL_ID INTEGER PRIMARY KEY AUTOINCREMENT, $COL_NAME TEXT, $COL_URL TEXT, $COL_DESCRIPTION TEXT, $COL_ISFAV INTEGER) 
      ''');
  }

  void add(Pdf pdf) async{
    Map<String, dynamic> map={};
    map["name"] = pdf.name;
    map["description"] = pdf.description;
    map["url"] = pdf.url;
    map["isfav"] = pdf.isFav;
    var db = await this._database;
    db.insert(TABLE_NAME, map);
  }

  Future<List<Pdf>> getAll() async{
   List<Pdf> resultList= [];
    var db =  await this.database;
    List<Map> result = await  db.query(TABLE_NAME);
    for(int i=0; i<result.length; i++){
      bool isf = result[i]['isfav']==1?true:false;
      print(isf);
      resultList.add(
          Pdf(
              result[i]["url"],
              result[i]["name"],
              result[i]["description"],
              isf
        )
      );
    }
    return resultList;
  }

  Future<int> update(String name, int isFav) async{
    var db =  await this.database;
    String clause = '$COL_NAME = \'$name\'';
    int i = await db.update(TABLE_NAME, {COL_ISFAV: isFav}, where: clause);
    return i;
  }


}