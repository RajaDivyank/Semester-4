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
          Expanded(child: getRow(2, [color.green,color.purple])),
        ],
        // children: [
        //   Expanded(
        //     child: Row(
        //       children: [
        //         Expanded(child: Container(color: Colors.yellow,margin: EdgeInsets.all(10.0),)),
        //         Expanded(child: Container(color: Colors.blue,margin: EdgeInsets.all(10.0))),
        //         Expanded(child: Container(color: Colors.deepOrange,margin: EdgeInsets.all(10.0))),
        //       ],
        //     ),
        //   ),
        //   Expanded(
        //     child: Row(
        //       children: [
        //         Expanded(child: Container(color: Colors.green,margin: EdgeInsets.all(10.0))),
        //         Expanded(child: Container(color: Colors.red,margin: EdgeInsets.all(10.0))),
        //         Expanded(child: Container(color: Colors.black,margin: EdgeInsets.all(10.0))),
        //       ],
        //     ),
        //   ),
        //   Expanded(
        //     child: Row(
        //       children: [
        //         Expanded(child: Container(color: Colors.lightGreenAccent,margin: EdgeInsets.all(10.0))),
        //         Expanded(child: Container(color: Colors.brown,margin: EdgeInsets.all(10.0))),
        //         Expanded(child: Container(color: Colors.cyanAccent,margin: EdgeInsets.all(10.0))),
        //       ],
        //     ),
        //   ),
        // ],
      ),
    );
  }
  Widget getRow(int part , List<Colors> color){
    return Row(
    children:
      getExpantion(part,color)
    );
  }
  List<Widget> getExpantion(int parts,color){
    List<Widget> widget = [];
    for(int i=0; i<parts;i++){
      widget.add(Expanded(child: Container(color: (color[i]),)));
    }
    return widget;
  }

}