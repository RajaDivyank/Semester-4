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
                Expanded(child: Container(color: Colors.yellow,),),
                Expanded(child: Container(color: Colors.blue,)),
                Expanded(child: Container(color: Colors.deepOrange,)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.green,)),
                Expanded(child: Container(color: Colors.red,)),
                Expanded(child: Container(color: Colors.black,)),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: Container(color: Colors.lightGreenAccent,)),
                Expanded(child: Container(color: Colors.brown,)),
                Expanded(child: Container(color: Colors.cyanAccent,)),
              ],
            ),
          ),
        ],
      ),
    );
  }

}