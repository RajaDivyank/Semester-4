import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ProgressIndicatorExample extends StatefulWidget {
  const ProgressIndicatorExample({super.key});

  @override
  State<ProgressIndicatorExample> createState() =>
      _ProgressIndicatorExampleState();
}

class _ProgressIndicatorExampleState extends State<ProgressIndicatorExample>
    with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      /// [AnimationController]s can be created with `vsync: this` because of
      /// [TickerProviderStateMixin].
      vsync: this,
      duration: const Duration(seconds: 5),
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
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: [
                    Expanded(
                      flex: 0,
                      child: Container(
                        padding: EdgeInsets.all(17),
                        alignment: Alignment.centerLeft,
                        child: const Text(
                          "Your Balance",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.fromLTRB(18, 9, 0, 9),
                                  alignment: Alignment.centerLeft,
                                  child: const Text("Money Received",
                                    style: TextStyle(color: Colors.white60,),
                                  ),
                                ),
                                Container(
                                  padding: const EdgeInsets.only(left: 15),
                                  alignment: Alignment.centerLeft,
                                  child: const Text("\$27,802.05",
                                    style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: const [
                                Text("15% ",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Icon(Icons.arrow_upward, color: Colors.white,),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 0,
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
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.deepOrange,
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(10),
                      child: Text("Apr to Jun", style: TextStyle(color: Colors.white, fontSize: 16),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.grey.shade900,
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      child: Text("1\nMonth", textAlign: TextAlign.center, style: TextStyle(color: Colors.white54, fontSize: 10),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.grey.shade900,
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(10),
                      child: Text("6\nMonth", textAlign: TextAlign.center, style: TextStyle(color: Colors.white54, fontSize: 10),),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Colors.grey.shade900,
                      ),
                      alignment: Alignment.center,
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(6),
                      child: Text("1\nYear", textAlign: TextAlign.center, style: TextStyle(color: Colors.white54, fontSize: 10),),
                    ),
                  ),
                ],
              ),
            ),
            getRow(icon: Icons.arrow_downward, percent: "75%", text: "Income"),
            getRow(text: "Outcome", percent: "25%", icon: Icons.arrow_upward),
          ],
        ),
      ),
    );
  }

  Widget getRow ( {text, percent, icon} ) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Text(
              text,
              style: TextStyle(color: Colors.white54),
            ),
          ),
        ),
        Expanded(
          flex: 0,
          child: Text(
            percent,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
        Expanded(
          child: Icon(icon, color: Colors.white),
        ),
      ],
    );
  }
}
