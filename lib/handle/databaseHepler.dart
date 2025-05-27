import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

class DataBaseHelper {
  final String dataBaseName = "flash";
  Future<Database> create(String sql) async {
    databaseFactory = databaseFactoryFfi;
    sqfliteFfiInit();
    final database = openDatabase(
      join(await getDatabasesPath(), 'dome.db'),
      onCreate: (db, version) {
        return db.execute(sql);
      },
      version: 1,
    );
    return database;
  }

}

