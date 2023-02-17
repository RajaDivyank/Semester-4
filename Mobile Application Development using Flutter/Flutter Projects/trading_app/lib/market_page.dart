import 'dart:async';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({Key? key}) : super(key: key);

  @override
  State<MarketPage> createState() => _MarketPageState();
}
class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class _MarketPageState extends State<MarketPage> with TickerProviderStateMixin {
  Timer? timer;
  double? randompercent1,randompercent2,randompercent3,randompercent4,randompercent5,randompercent6;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) => getRandom());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // List<_SalesData> data = [
    //   _SalesData('12.16', 5),
    //   _SalesData('12.17', 35),
    //   _SalesData('12.18', 20),
    //   _SalesData('12.19', 5),
    //   _SalesData('12.20', 45)
    // ];
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 12, 17, 19),
      body: ListView(
        children: [
          Container(
            height: 80,
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
          Container(
            height: 200,
            child:  SizedBox(
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
            // child: SizedBox(
            //   width: 400,
            //   height: 200,
            //   child: SfCartesianChart(
            //       primaryXAxis: CategoryAxis(),
            //       // Chart title
            //       // title: ChartTitle(text: 'Half yearly sales analysis'),
            //       // Enable legend
            //       legend: Legend(isVisible: true),
            //       // Enable tooltip
            //       tooltipBehavior: TooltipBehavior(enable: true),
            //       series: <ChartSeries<_SalesData, String>>[
            //         LineSeries<_SalesData, String>(
            //             dataSource: data,
            //             xValueMapper: (_SalesData sales, _) => sales.year,
            //             yValueMapper: (_SalesData sales, _) => sales.sales,
            //             name: '',
            //             // Enable data label
            //             dataLabelSettings: DataLabelSettings(isVisible: true))
            //       ]),
            //   // child: LineChart(
            //   //   LineChartData(
            //   //     borderData: FlBorderData(
            //   //         show: false
            //   //     ),
            //   //     gridData: FlGridData(
            //   //       show: false,
            //   //     ),
            //   //     titlesData: FlTitlesData(
            //   //       show: false,
            //   //     ),
            //   //     maxX: 5,
            //   //     maxY: 5,
            //   //     minX: 0,
            //   //     minY: 0,
            //   //     lineBarsData: [
            //   //       LineChartBarData(
            //   //         spots: [
            //   //           const FlSpot(0, 0),
            //   //           const FlSpot(0.6, 0.6),
            //   //           const FlSpot(1.1, 1.9),
            //   //           const FlSpot(1.4, 2.20),
            //   //           const FlSpot(1.6, 2.02),
            //   //           const FlSpot(1.9, 1.1),
            //   //           const FlSpot(2.3, 1.8),
            //   //           const FlSpot(2.6, 2.6),
            //   //           const FlSpot(3, 2.7),
            //   //           const FlSpot(3.1, 1.8),
            //   //           const FlSpot(3.6, 1.9),
            //   //           const FlSpot(4.5,4.9),
            //   //           const FlSpot(5, 4),
            //   //         ],
            //   //         dotData: FlDotData(
            //   //           show: false,
            //   //         ),
            //   //         isCurved: true,
            //   //         colors: [const Color(0xffff400b), ],
            //   //         barWidth: 3,
            //   //         belowBarData: BarAreaData(
            //   //           show: true,
            //   //           colors: [const Color(0xffff600b), const Color(0xff000000),],
            //   //           gradientFrom: Offset(0, 0.1),
            //   //           gradientTo: Offset(0, 0.92),
            //   //         ),
            //   //       ),
            //   //     ],
            //   //   ),
            //   // ),
            // ),
          ),
          Container(
            height: 80,
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
          Container(
            height: 600,
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      getData('Buy',
                          percent: '+$randompercent1%',
                          percentcolor: Colors.green,
                          prices: '9460.378',
                          updownarrow: FontAwesomeIcons.upLong,
                          updownarrowcolor: Colors.green,
                          linecolor: Colors.blue,
                          linevalue: 0.8),
                      getData('Sell',
                          percent: '-$randompercent2%',
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
                          percent: '-$randompercent3%',
                          percentcolor: Colors.red,
                          prices: '12.68 GH/S',
                          updownarrow: FontAwesomeIcons.downLong,
                          updownarrowcolor: Colors.red,
                          linecolor: Colors.yellow,
                          linevalue: 0.6),
                      getData('Price',
                          percent: '+$randompercent4%',
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
                          percent: '+$randompercent5%',
                          percentcolor: Colors.green,
                          prices: '2407.259',
                          updownarrow: FontAwesomeIcons.upLong,
                          updownarrowcolor: Colors.green,
                          linecolor: Colors.blueGrey,
                          linevalue: 0.9),
                      getData('Super sports',
                          percent: '$randompercent6%',
                          percentcolor: Colors.grey,
                          prices: '2.000.000',
                          linecolor: Colors.greenAccent,
                          linevalue: 1.0),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      getData('Algorithm',
                          percent: '-$randompercent3%',
                          percentcolor: Colors.red,
                          prices: '12.68 GH/S',
                          updownarrow: FontAwesomeIcons.downLong,
                          updownarrowcolor: Colors.red,
                          linecolor: Colors.yellow,
                          linevalue: 0.6),
                      getData('Price',
                          percent: '+$randompercent4%',
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
                      getData('Buy',
                          percent: '+$randompercent1%',
                          percentcolor: Colors.green,
                          prices: '9460.378',
                          updownarrow: FontAwesomeIcons.upLong,
                          updownarrowcolor: Colors.green,
                          linecolor: Colors.blue,
                          linevalue: 0.8),
                      getData('Sell',
                          percent: '-$randompercent2%',
                          percentcolor: Colors.red,
                          prices: '6399.256',
                          updownarrow: FontAwesomeIcons.downLong,
                          updownarrowcolor: Colors.red,
                          linecolor: Colors.purpleAccent,
                          linevalue: 0.7),
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
                            margin: const EdgeInsets.only(
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
                            margin: const EdgeInsets.only(left: 15.0),
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
  void getRandom(){
    setState(() {
      randompercent1 = Random().nextInt(99) + 1;
      randompercent2 = Random().nextInt(99) + 2;
      randompercent3 = Random().nextInt(99) + 3;
      randompercent4 = Random().nextInt(99) + 4;
      randompercent5 = Random().nextInt(99) + 5;
      randompercent6 = Random().nextInt(99) + 6;
    });
  }
}
