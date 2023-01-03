import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        body: Row(
          children: [
            Expanded(
                child: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.blue,
                  margin: EdgeInsets.all(10),
                )),
                Expanded(
                    child: Container(
                  color: Colors.pink,
                  margin: EdgeInsets.all(10),
                )),
                Expanded(
                    child: Container(
                  color: Colors.black,
                  margin: EdgeInsets.all(10),
                ))
              ],
            )),
            Expanded(
                child: Column(
              children: [
                Expanded(
                    child: Container(
                  child: Row(
                    children: [
                      Expanded(
                          child: Container(
                        color: Colors.black,
                        margin: EdgeInsets.all(10),
                      )),
                      Expanded(
                          child: Container(
                        color: Colors.lightBlue,
                        margin: EdgeInsets.all(10),
                      ))
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  child: Expanded(
                    child: Column(
                      children: [
                        Expanded(
                            child: Container(
                          color: Colors.lightBlue,
                          margin: EdgeInsets.all(10),
                        )),
                        Expanded(
                            child: Container(
                          color: Colors.lightBlue,
                          margin: EdgeInsets.all(10),
                        ))
                      ],
                    ),
                  ),
                ))
              ],
            ))
          ],
        ));
  }
}
