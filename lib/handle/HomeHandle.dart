import 'package:file_selector/file_selector.dart';
import 'package:flutter/cupertino.dart';



///
///  开启选择弹框 并且打印出来
///
Future<String?> startSelectedFile() async {
  const XTypeGroup typeGroup = XTypeGroup(
    label: '请选择exe文件',
    extensions: <String>['exe'],
  );


  final XFile? file = await openFile(
    acceptedTypeGroups: <XTypeGroup>[typeGroup],
  );

  return file?.path;

}
