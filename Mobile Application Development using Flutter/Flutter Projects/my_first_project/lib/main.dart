import 'package:flutter/material.dart';
import 'package:my_first_project/lab_7.dart';
import 'package:my_first_project/lab_8.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
      home: Lab_7(),
  );
  }
}