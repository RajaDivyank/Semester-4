import 'package:flutter/material.dart';

class Lab_7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.yellow,margin: EdgeInsets.all(10.0),)),
                Expanded(child: Container(color: Colors.blue,margin: EdgeInsets.all(10.0))),
                Expanded(child: Container(color: Colors.deepOrange,margin: EdgeInsets.all(10.0))),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.green,margin: EdgeInsets.all(10.0))),
                Expanded(child: Container(color: Colors.red,margin: EdgeInsets.all(10.0))),
                Expanded(child: Container(color: Colors.black,margin: EdgeInsets.all(10.0))),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.lightGreenAccent,margin: EdgeInsets.all(10.0))),
                Expanded(child: Container(color: Colors.brown,margin: EdgeInsets.all(10.0))),
                Expanded(child: Container(color: Colors.cyanAccent,margin: EdgeInsets.all(10.0))),
              ],
            ),
          ),
        ],
      ),
    );
  }

}