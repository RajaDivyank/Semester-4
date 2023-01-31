import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MarketPage extends StatelessWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 12, 17, 19),
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Row(
                children: [
                  Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                'Historical prices',
                                style: GoogleFonts.actor(
                                    textStyle: TextStyle(
                                        fontSize: 20, color: Colors.white)),
                              ),
                            ),
                            Container(),
                            Container(
                              child: Text(
                                'Join',
                                style: GoogleFonts.actor(
                                    textStyle: TextStyle(
                                        fontSize: 20, color: Colors.green)),
                              ),
                            ),
                          ],
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Row(
                          children: [
                            Center(
                              child: Container(
                                margin: EdgeInsets.only(bottom: 5.0,left: 20.0),
                                child: Image.asset(
                                    'assets/images/basic-bar-graph.png',fit: BoxFit.cover,),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              flex: 3,
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              'Platform data',
                              style: GoogleFonts.actor(
                                  textStyle: const TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ));
  }
}
