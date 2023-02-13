import 'package:flutter/material.dart';
import 'package:trading_app/all_page.dart';
import 'package:trading_app/balance.dart';
import 'package:trading_app/demo.dart';
import 'package:trading_app/home_page.dart';
import 'package:trading_app/login_page.dart';
import 'package:trading_app/market_page.dart';
import 'package:trading_app/splash_screen_page.dart';
import 'package:trading_app/trade_page.dart';

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
      home: SplashScreen(),
    );
  }
}
