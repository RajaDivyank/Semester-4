import 'dart:io';
// import 'package:database_evaluation/city_model.dart';
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
  Future<dynamic> getData() async {
    Database db = await initDatabase();
    dynamic list = await db.rawQuery("Select * from Employeelist inner join Citylist on Employeelist.CityId = Citylist.CityID");
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

  // Future<List<CityModel>> getCityList() async {
  //   Database db = await initDatabase();
  //   List<Map<String, Object?>> res = await db.rawQuery("Select * from Citylist");
  //   List<CityModel> resList = [];
  //   for (int i = 0; i < res.length; i++) {
  //     CityModel model = CityModel();
  //     model.cityId = int.parse(res[i]["CityID"].toString());
  //     model.cityName = res[i]["CityName"].toString();
  //     resList.add(model);
  //   }
  //   print(resList.toString());
  //   return resList;
  // }
}