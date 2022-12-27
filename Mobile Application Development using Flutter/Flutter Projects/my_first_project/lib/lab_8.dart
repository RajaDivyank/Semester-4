import 'package:flutter/material.dart';

class Lab_8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lab - 8"),
      ),
        body: Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.lightGreenAccent,
                child: Text(
                  'Light Green',
                  style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),
                ),
              )),
              Expanded(
                  child: Container(
                color: Colors.cyan,
                child: Text('cyan'),
              )),
              Expanded(
                  child: Container(
                color: Colors.red,
              )),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.brown,
              )),
              Expanded(
                  child: Container(
                color: Colors.yellow,
              )),
              Expanded(
                  child: Container(
                color: Colors.deepPurple,
              )),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                color: Colors.white10,
              )),
              Expanded(
                  child: Container(
                color: Colors.purple,
              )),
              Expanded(
                  child: Container(
                color: Colors.greenAccent,
              )),
            ],
          ),
        ),
      ],
    ));
  }
}
