import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 17, 19),
      body: Column(
        children: [
          Expanded(
            child: Row(children: [
              Expanded(
                flex: 3,
                child: Container(
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Historical prices',
                    style: GoogleFonts.actor(
                      textStyle: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 30.0),
                  child: Text(
                    'Join',
                    style: GoogleFonts.actor(
                        textStyle:
                            TextStyle(fontSize: 15, color: Colors.green)),
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            flex: 2,
            child: SizedBox(
              width: 400,
              height: 200,
              child: LineChart(
                LineChartData(
                  borderData: FlBorderData(
                      show: false
                  ),
                  gridData: FlGridData(
                    show: false,
                  ),
                  titlesData: FlTitlesData(
                    show: false,
                  ),
                  maxX: 5,
                  maxY: 5,
                  minX: 0,
                  minY: 0,
                  lineBarsData: [
                    LineChartBarData(
                      spots: [
                        const FlSpot(0, 0),
                        const FlSpot(0.6, 0.6),
                        const FlSpot(1.1, 1.9),
                        const FlSpot(1.4, 2.20),
                        const FlSpot(1.6, 2.02),
                        const FlSpot(1.9, 1.1),
                        const FlSpot(2.3, 1.8),
                        const FlSpot(2.6, 2.6),
                        const FlSpot(3, 2.7),
                        const FlSpot(3.1, 1.8),
                        const FlSpot(3.6, 1.9),
                        const FlSpot(4.5,4.9),
                        const FlSpot(5, 4),
                      ],
                      dotData: FlDotData(
                        show: false,
                      ),
                      isCurved: true,
                      colors: [const Color(0xffff400b), ],
                      barWidth: 3,
                      belowBarData: BarAreaData(
                        show: true,
                        colors: [const Color(0xffff600b), const Color(0xff000000),],
                        gradientFrom: Offset(0, 0.1),
                        gradientTo: Offset(0, 0.92),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(children: [
              Expanded(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.only(top: 40.0),
                  margin: EdgeInsets.only(left: 20.0),
                  child: Text(
                    'Platform data',
                    style: GoogleFonts.actor(
                      textStyle: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(top: 40.0),
                  margin: EdgeInsets.only(left: 30.0),
                  child: Text(
                    'More',
                    style: GoogleFonts.actor(
                        textStyle:
                            TextStyle(fontSize: 15, color: Colors.green)),
                  ),
                ),
              ),
            ]),
          ),
          Expanded(
            flex: 4,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      getData('Buy',
                          percent: '12.6%',
                          percentcolor: Colors.green,
                          prices: '9460.378',
                          updownarrow: FontAwesomeIcons.upLong,
                          updownarrowcolor: Colors.green,
                          linecolor: Colors.blue,
                          linevalue: 0.8),
                      getData('Sell',
                          percent: '-6.7%',
                          percentcolor: Colors.red,
                          prices: '6399.256',
                          updownarrow: FontAwesomeIcons.downLong,
                          updownarrowcolor: Colors.red,
                          linecolor: Colors.purpleAccent,
                          linevalue: 0.7),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      getData('Algorithm',
                          percent: '-27.6%',
                          percentcolor: Colors.red,
                          prices: '12.68 GH/S',
                          updownarrow: FontAwesomeIcons.downLong,
                          updownarrowcolor: Colors.red,
                          linecolor: Colors.yellow,
                          linevalue: 0.6),
                      getData('Price',
                          percent: '+18.7%',
                          percentcolor: Colors.green,
                          prices: '549.527',
                          updownarrow: FontAwesomeIcons.upLong,
                          updownarrowcolor: Colors.green,
                          linecolor: Colors.redAccent,
                          linevalue: 0.9),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      getData('Conversion',
                          percent: '+194.2%',
                          percentcolor: Colors.green,
                          prices: '2407.259',
                          updownarrow: FontAwesomeIcons.upLong,
                          updownarrowcolor: Colors.green,
                          linecolor: Colors.blueGrey,
                          linevalue: 0.9),
                      getData('Super sports',
                          percent: '0.00%',
                          percentcolor: Colors.grey,
                          prices: '2.000.000',
                          linecolor: Colors.greenAccent,
                          linevalue: 1.0),
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

  Widget getData(data1,
      {percent,
      percentcolor,
      prices,
      updownarrow,
      updownarrowcolor,
      linecolor,
      linevalue}) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 32, 39, 42),
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
                              percent,
                              style: TextStyle(color: percentcolor),
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
                              prices,
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(right: 1, left: 5),
                            child: Icon(
                              updownarrow,
                              color: updownarrowcolor,
                              size: 15,
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
                          child: Center(
                            child: Container(
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.grey,
                                value: linevalue,
                                color: linecolor,
                                // value: controller.value,
                                // valueColor: AlwaysStoppedAnimation(Colors.orange),
                              ),
                              margin: const EdgeInsets.all(12.0),
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
