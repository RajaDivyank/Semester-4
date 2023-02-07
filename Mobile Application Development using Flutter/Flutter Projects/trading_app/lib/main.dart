import 'package:flutter/material.dart';
import 'package:trading_app/all_page.dart';
import 'package:trading_app/balance.dart';
import 'package:trading_app/demo.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllPage(),
    );
  }
}
