import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: true);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 17, 19),
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
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
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
                              margin: EdgeInsets.only(bottom: 5.0, left: 20.0),
                              child: Image.asset(
                                'assets/images/basic-bar-graph.png',
                                fit: BoxFit.cover,
                              ),
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
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10, top: 20.0),
                      child: Text(
                        'Platform data',
                        style: GoogleFonts.actor(
                            textStyle: const TextStyle(
                                fontSize: 20, color: Colors.white)),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            getData(
                                'Buy',
                                '12.6%',
                                Colors.green,
                                '9460.378',
                                Colors.pink,
                                FontAwesomeIcons.upLong,
                                Colors.green,
                                'data5',
                                Colors.pink),
                            getData(
                                'Sell',
                                '-6.7%',
                                Colors.red,
                                '6399.256',
                                Colors.pink,
                                FontAwesomeIcons.downLong,
                                Colors.red,
                                'data5',
                                Colors.pink),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            getData(
                                'Algorithm',
                                '-27.6%',
                                Colors.red,
                                '12.68 GH/S',
                                Colors.pink,
                                FontAwesomeIcons.downLong,
                                Colors.red,
                                'data5',
                                Colors.pink),
                            getData(
                                'Price',
                                '+18.7%',
                                Colors.green,
                                '549.527',
                                Colors.pink,
                                FontAwesomeIcons.upLong,
                                Colors.green,
                                'data5',
                                Colors.pink),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            getData(
                                'Conversion',
                                '+194.2%',
                                Colors.green,
                                '2407.259',
                                Colors.pink,
                                FontAwesomeIcons.upLong,
                                Colors.green,
                                'data5',
                                Colors.pink),
                            getData(
                                'Super sports',
                                '0.00%',
                                Colors.grey,
                                '2.000.000',
                                Colors.pink,
                                FontAwesomeIcons.upLong,
                                Colors.green,
                                'data5',
                                Colors.pink),
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
    );
  }

  Widget getData(
      [data1, data2, color2, data3, color3, icons, iconsColor, data5, color5]) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 32, 39, 42),
              ),
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: Container(
                            margin: EdgeInsets.only(left: 15.0, top: 5.0),
                            child: Text(
                              data1,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            margin: EdgeInsets.only(
                                left: 5.0, right: 5.0, bottom: 5.0, top: 10.0),
                            child: Text(
                              data2,
                              style: TextStyle(color: color2),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                              margin: EdgeInsets.only(left: 15.0),
                              child: Text(
                                data3,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              )),
                        ),
                        Expanded(
                          child: Container(
                              margin: EdgeInsets.only(right: 1, left: 5),
                              child: Icon(
                                icons,
                                color: iconsColor,
                                size: 15,
                              )),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Container(
                              margin: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  LinearProgressIndicator(
                                    value: controller.value,
                                    semanticsLabel: 'Linear progress indicator',
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
