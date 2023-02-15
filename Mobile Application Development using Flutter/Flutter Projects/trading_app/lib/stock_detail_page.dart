import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class StockDetailPage extends StatelessWidget {
  const StockDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 17, 19),
        body: ListView(
          children: [
            Container(
              height: 50,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Icon(
                        FontAwesomeIcons.apple,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                          child: Center(
                              child: Text(
                        'Stock Page',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      )))),
                  Expanded(
                      child: Container(
                          child: Icon(
                    Icons.save_alt_rounded,
                    color: Colors.white,
                  )))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Color.fromARGB(255, 32, 39, 42),
              ),
              height: 125,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                              top: 20.0, left: 30.0, bottom: 10.0),
                          child: const Text(
                            'Name',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(
                              left: 30.0, top: 20.0, bottom: 10.0),
                          child: const Text(
                            'current profit',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const ListTile(
                    leading: Icon(
                      FontAwesomeIcons.apple,
                      color: Colors.white,
                    ),
                    horizontalTitleGap: 1,
                    title: Text(
                      'value',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    trailing: Text(
                      'percent',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 100,
              color: Colors.red,
            ),
            // Container(height: 80,color: Colors.orange,),
            // Container(height: 100,color: Colors.yellow,),
            // Container(height: 70,color: Colors.pink,),
            // Container(height: 90,color: Colors.purpleAccent,)
          ],
        ),
      ),
    );
  }
}
