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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hearder(),
              Container(
                margin: EdgeInsets.only(top: 30, left: 30),
                child: Row(
                  children: [
                    SizedBox(
                      width: 400,
                      height: 40,
                      child: TextField(
                        maxLines: 1,
                        cursorColor: Colors.white,
                        style: TextStyle(color: Colors.white, fontSize: 13),
                        decoration: const InputDecoration(
                          hintText: "输入搜索关键字",
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      margin: EdgeInsets.only(left: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: SizedBox(
                        width: 100,
                        height: 40,
                        child: Center(
                          child: Text(
                            "搜索",
                            textAlign: TextAlign.center,
                            style: TextStyle(),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: isVisiableTips,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 200),
                  child: GestureDetector(
                    onTap: () {

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
