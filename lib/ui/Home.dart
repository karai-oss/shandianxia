import 'dart:io';

import 'package:flashstart/components/Hearder.dart';
import 'package:flashstart/handle/HomeHandle.dart';
import 'package:flashstart/utils/globle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flashstart/main.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  bool isVisiableTips = true;
  String selectedPath = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 800,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(color: Color.fromARGB(255, 23, 23, 23)),
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Hearder(),
              Visibility(
                visible: isVisiableTips,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 240),
                  child: GestureDetector(
                    onTap: ()  {
                      // 弹出文件选择框添加
                      // startSelectedFile().then((value){
                      //
                      //   setState(()=>{
                      //     selectedPath : value
                      //   });
                      // });
                      // startSelectedFile();
                    },
                    child: Text(
                      "前往添加",
                      style: TextStyle(
                        color: Color.fromARGB(255, 82, 82, 136),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
