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
                            setState(() {
                              a = Random().nextInt(8) + 1;
                            });
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$a.jfif',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              b = Random().nextInt(8) + 1;
                            });
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$b.jfif',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              c = Random().nextInt(8) + 1;
                            });
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$c.jfif',
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
                            setState(() {
                              d = Random().nextInt(8) + 1;
                            });
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$d.jfif',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              e = Random().nextInt(8) + 1;
                            });
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$e.jfif',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              f = Random().nextInt(8) + 1;
                            });
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$f.jfif',
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
                            setState(() {
                              g = Random().nextInt(8) + 1;
                            });
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$g.jfif',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              h = Random().nextInt(8) + 1;
                            });
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$h.jfif',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              i = Random().nextInt(8) + 1;
                            });
                          },
                          child: Container(
                            child: Image.asset(
                              'assets/images/game$i.jfif',
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
}
