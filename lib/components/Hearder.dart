import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

class Hearder extends StatelessWidget {
  const Hearder({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "闪电侠",
              style: TextStyle(
                foreground:
                    Paint()
                      ..shader = ui.Gradient.linear(
                        Offset(0, 0),
                        Offset(80, 0),
                        [Colors.red, Colors.blue],
                      ),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox.fromSize(size: Size(10, 10)),
            Text(
              "打造专属软件工具箱",
              style: TextStyle(
                foreground:
                    Paint()
                      ..shader = ui.Gradient.linear(
                        Offset(0, 0),
                        Offset(200, 0),
                        [Colors.red, Colors.blue],
                      ),
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () async {
            await windowManager.close();
          },
          child: Image.file(
            File("D:\\publicCode\\flashStart\\lib\\assets\\icon_sdx_close.png"),
            width: 20,
            height: 20,
          ),
        ),
      ],
    );
  }
}
