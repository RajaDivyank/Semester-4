import 'dart:async';
import 'package:flutter/material.dart';
import 'package:trading_app/all_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => AllPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: const DecorationImage(
                      image: AssetImage("assets/images/newiconlogo.jpg"),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(5),
                child: const Text(
                  "Trading App",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 34),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.indigo[800]);
  }
}