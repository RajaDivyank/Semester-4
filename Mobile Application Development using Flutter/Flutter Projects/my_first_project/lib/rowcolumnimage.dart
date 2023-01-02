import 'package:flutter/material.dart';

class RowColumnImage extends StatelessWidget {
  const RowColumnImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Row Column Image')),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Expanded(
                                    child: Container(
                                      color: Colors.orange,
                                      margin: const EdgeInsets.all(10.0),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Image.asset('assets/images/forlick.jpeg',height: 150,),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 4,
                        child: Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Expanded(
                                    child: Container(
                                      color: Colors.yellow,
                                      margin: const EdgeInsets.all(10.0),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Image.asset('assets/images/Kruta1.jpeg',width: 100,),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Stack(
                                children: [
                                  Expanded(
                                    child: Container(
                                      color: Colors.red,
                                      margin: const EdgeInsets.all(10.0),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: Image.asset('assets/images/Kruta2.jpeg',height: 80,),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: [
                                              Expanded(
                                                child: Stack(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                          color: Colors.red,
                                                          margin:
                                                              const EdgeInsets
                                                                  .all(10.0)),
                                                    ),
                                                    Align(
                                                      alignment: Alignment.center,
                                                      child: Image.asset('assets/images/suit2.jpeg',width: 100,height: 100,),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: Stack(
                                                  children: [
                                                    Expanded(
                                                      child: Container(
                                                        color: Colors.grey,
                                                        margin: const EdgeInsets
                                                            .all(10.0),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment: Alignment.center,
                                                      child: Image.asset('assets/images/suit2.jpeg',height: 100,),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Stack(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  color: Colors.pink,
                                                  margin: const EdgeInsets.all(
                                                      10.0),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Image.asset('assets/images/suit3.jpeg',width: 100,),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  // Expanded(
                                  //   child: Container(
                                  //     color: Colors.pink,
                                  //     margin: const EdgeInsets.all(10.0),
                                  //   ),
                                  // ),
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      color: Colors.purpleAccent,
                                      margin: const EdgeInsets.all(10.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      color: Colors.yellow,
                                      margin: EdgeInsets.all(10.0),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      color: Colors.green,
                                      margin: EdgeInsets.all(10.0),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
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
