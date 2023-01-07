import 'package:flutter/material.dart';

class Lab_8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Lab - 8")),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.lightGreenAccent,
                    child: const Center(child: Text('lightGreenAccent')),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.cyan,
                    child: const Center(child: Text('cyan')),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.red,
                    child: const Center(child: Text('red'),),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.brown,
                    child: const Center(child: Text('Brown'),),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.yellow,
                    child: const Center(child: Text('yellow'),),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.deepPurple,
                    child: const Center(child: Text('deepPurple'),),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.orange,
                    child: const Center(child: Text('orange'),),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.purple,
                    child: const Center(child: Text('purple'),),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.greenAccent,
                    child: const Center(child: Text('greenAccent'),),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
