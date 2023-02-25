//region Imports Statements
import 'dart:io';
import 'package:matrimony_app/Model/user_model.dart';
import 'package:path/path.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
//endregion

class MatrimonyDatabase {

  //region Database Connection & Copy Root File
  Future<Database> initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = join(appDocDir.path, 'matrimony.db');
    return await openDatabase(
      databasePath,
      version: 2,
    );
  }

  Future<void> copyPasteAssetFileToRoot() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "matrimony.db");

    if (FileSystemEntity.typeSync(path) == FileSystemEntityType.notFound) {
      ByteData data =
      await rootBundle.load(join('assets/database', 'matrimony.db'));
      List<int> bytes =
      data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes);
      await new File(path).writeAsBytes(bytes);
    }
  }
  //endregion

  //region Get Data From User Table
  Future<List<NewUserModel>> getDataFromUserTable() async {
    List<NewUserModel> userModelList = [];
    Database db = await initDatabase();
    List<Map<String, Object?>> data =
    await db.rawQuery("SELECT * FROM UsersList");
    for (int i = 0; i < data.length; i++) {
      NewUserModel model = NewUserModel();
      model.UserID = data[i]['UserID'] as int;
      model.Username = data[i]['Username'].toString();
      model.Age = data[i]['Age'] as int;
      model.City = data[i]['City'].toString();

      userModelList.add(model);
    }
    return userModelList;
    // print("LENGTH ::: ${data.length}");
  }
  //endregion

  //region Insert OR Update Data into User Table
  Future<void> insertOrUpdateDataIntoUserTable ({name, city, age, userID}) async {
    Database db = await initDatabase();
    Map<String, Object?> map = Map();
    map['Username'] = name;
    map['City'] = city;
    map['Age'] = age;

    if(userID != -1){
      await db.update('UsersList', map, where: 'UserID = ?', whereArgs: [userID],);
    }
    else{
      await db.insert('UsersList', map);
    }
  }
  //endregion

  //region Delete Data From User Table
  Future<int> deleteDataFromUserTable(userID) async {
    Database db = await initDatabase();
    int deletedID =
    await db.delete(
        'UsersList',
        where: 'UserID = ?',
        whereArgs: [userID]
    );
    return deletedID;
  }
//endregion
}