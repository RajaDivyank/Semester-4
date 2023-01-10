import 'dart:math';

import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  const GamePage({Key? key}) : super(key: key);

  @override
  State<GamePage> createState() => _GamePageState();
}

int? a,b,c,d,e,f,g,h,i;

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Game')),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            getimage();
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$c.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            getimage();
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$a.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            getimage();
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$b.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            getimage();
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$e.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            getimage();
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$f.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            getimage();
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$g.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            getimage();
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$h.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            getimage();
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$i.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            getimage();
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$d.jpeg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  void getimage() {
    setState(() {
      a = Random().nextInt(8) + 1;
      b = Random().nextInt(8) + 1;
      c = Random().nextInt(8) + 1;
      d = Random().nextInt(8) + 1;
      e = Random().nextInt(8) + 1;
      f = Random().nextInt(8) + 1;
      g = Random().nextInt(8) + 1;
      h = Random().nextInt(8) + 1;
      i = Random().nextInt(8) + 1;
    });
  }
}
