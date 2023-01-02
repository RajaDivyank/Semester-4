import 'package:app_project/matrimony.dart';
import 'package:app_project/row_column_image.dart';
import 'package:app_project/simpleInterestCalculator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: RowColumnImage(),
    );
  }
}
