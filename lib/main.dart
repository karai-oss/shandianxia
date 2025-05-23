import 'package:flashstart/handle/databaseHepler.dart';
import 'package:flashstart/ui/Home.dart';
import 'package:flashstart/utils/globle.dart';
import 'package:flashstart/utils/windows.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:window_manager/window_manager.dart';


void main() async {
  handleWindows();
  WidgetsFlutterBinding.ensureInitialized();
  var instance = DataBaseHelper();
  instance
      .create(
        "create table desktop (id INTEGER PRIMARY KEY, name TEXT, icon text , time text)",
      )
      .then((dataBase) {
      Globle.database = dataBase;
      });
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: DragToMoveArea(child: Home()),
    );
  }
}
