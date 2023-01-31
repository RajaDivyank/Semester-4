import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

int? i,j;

class _DicePageState extends State<DicePage> {
  @override
  void initState() {
    getRandom();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Random Number'),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    getRandom();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Image(
                      image: AssetImage('assets/images/dice$i.png'),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    getRandom();
                  },
                  child: Container(
                    margin: const EdgeInsets.all(10.0),
                    child: Image(
                      image: AssetImage('assets/images/dice$j.png'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getRandom() {
    setState(() {
      i = Random().nextInt(6) + 1;
      j = Random().nextInt(6) + 1;
    });
  }
}
