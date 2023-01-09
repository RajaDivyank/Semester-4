import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}
int i=1;
int j=2;
class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
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
    );
  }
  void getRandom(){
    setState(() {
      i=Random().nextInt(5)+1;
      j=Random().nextInt(5)+1;
    });
  }
}
