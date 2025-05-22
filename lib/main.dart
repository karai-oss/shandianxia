import 'package:flashstart/ui/Home.dart';
import 'package:flashstart/utils/windows.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

void main()  async {
  handleWindows();
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
      home: DragToMoveArea(
        child: Home(),
      )
    );
  }
}
