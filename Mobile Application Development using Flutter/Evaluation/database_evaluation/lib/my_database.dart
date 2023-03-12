import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class MyDatabase{
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'employee.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }
  Future<void> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "employee.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
      await rootBundle.load(join('assets/database', 'employee.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await File(path).writeAsBytes(bytes);
    }
  }
  Future<void> getUser() async {
    Database db = await initDatabase();
    dynamic res = await db.rawQuery("select * from employeelist");
    print(res);
  }
  Future<dynamic> getData() async {
    Database db = await initDatabase();
    dynamic list = await db.rawQuery("select * from employeelist");
    getUser();
    return list;
  }
  Future<void> add({required Map<String, Object?> map}) async {
      Database db = await initDatabase();
      db.insert('employeelist', map);
  }
  Future<void> deleteById(int id) async {
    Database db = await initDatabase();
    db.rawQuery("Delete from employeelist where EmployeeID = ${id}");
  }
}