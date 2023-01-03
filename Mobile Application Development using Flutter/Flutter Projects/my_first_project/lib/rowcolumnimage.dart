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
                                    child: Image.asset(
                                      'assets/images/forlick.jpeg',
                                      height: 150,
                                    ),
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
                                    child: Image.asset(
                                      'assets/images/Kruta2.jpeg',
                                      width: 100,
                                    ),
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
                                    child: Image.asset(
                                      'assets/images/suit1.jpeg',
                                      height: 80,
                                    ),
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
                                                      alignment:
                                                          Alignment.center,
                                                      child: Image.asset(
                                                        'assets/images/Kruta1.jpeg',
                                                        width: 100,
                                                        height: 200,
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
                                                      alignment:
                                                          Alignment.center,
                                                      child: Image.asset(
                                                        'assets/images/suit2.jpeg',
                                                        height: 120,
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
                                                child: Image.asset(
                                                  'assets/images/suit3.jpeg',
                                                  width: 100,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Stack(
                                            children: [
                                              Expanded(
                                                child: Container(
                                                  color: Colors.purple,
                                                  margin: const EdgeInsets.all(
                                                      10.0),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: Image.asset(
                                                  'assets/images/nyari1.jpeg',
                                                  width: 100,
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
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  // Expanded(
                                  //   child: Row(
                                  //     children: [
                                  //       Expanded(
                                  //         child: Stack(
                                  //           fit: StackFit.expand,
                                  //           children: [
                                  //             Expanded(
                                  //               child: Container(
                                  //                 color: Colors.yellow,
                                  //                 margin: const EdgeInsets.all(
                                  //                     10.0),
                                  //               ),
                                  //             ),
                                  //             Expanded(
                                  //               child: Container(
                                  //                 padding: EdgeInsets.all(20.0),
                                  //                 child: Image.asset(
                                  //                     'assets/images/Kruta3.jpeg',fit: BoxFit.cover,),
                                  //               ),
                                  //             ),
                                  //           ],
                                  //         ),
                                  //       ),
                                  //     ],
                                  //   ),
                                  // ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(
                                          child: Stack(
                                            fit: StackFit.expand,
                                            children: [
                                              Expanded(
                                                child: Container(
                                                    color: Colors.green,
                                                    margin:
                                                        const EdgeInsets.all(
                                                            10.0)),
                                              ),
                                              Expanded(
                                                child: Container(
                                                  padding: const EdgeInsets.all(
                                                      20.0),
                                                  child: Image.asset(
                                                    'assets/images/Kruta3.jpeg',
                                                    fit: BoxFit.cover,
                                                  ),
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
  Widget getImage(colors,margin,){
    return Expanded(child: Row(
      children: [
        Container(color: colors,margin: EdgeInsets.all(margin),)
      ],
    ),);
  }
}
