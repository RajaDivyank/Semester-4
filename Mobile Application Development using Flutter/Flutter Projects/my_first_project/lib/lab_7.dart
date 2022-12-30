import 'package:flutter/material.dart';

class Lab_7 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic parts"),
      ),
      body: Column(
        children: [
          getRow(2, [Colors.grey,Colors.green]),
          getRow(3, [Colors.purple,Colors.blue,Colors.greenAccent]),
          getRow(2, [Colors.red,Colors.green]),
          getRow(5,[Colors.greenAccent,Colors.yellow,Colors.white54,Colors.brown,Colors.yellow])
        ],
      ),
    );
  }
  Widget getRow(int parts ,color){
    return Expanded(
      child: Row(
      children:
        getExpantion(parts,color)
      ),
    );
  }
  List<Widget> getExpantion(int parts,color){
    List<Widget> widget = [];
    for(int i=0; i<parts;i++){
      widget.add(Expanded(child: Container(color: color[i])));
    }
    return widget;
  }
}