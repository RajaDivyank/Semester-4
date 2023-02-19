import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:http/http.dart' as http;
import 'package:trading_app/Pages/add_stock_page.dart';
import 'package:trading_app/Pages/all_page.dart';
import 'dart:async';
import 'dart:math';

class StockDetailPage extends StatefulWidget {
  StockDetailPage({Key? key, @required this.map}) : super(key: key);
  dynamic map;

  @override
  State<StockDetailPage> createState() => _StockDetailPageState();
}

class _StockDetailPageState extends State<StockDetailPage> {
  Timer? timer;
  double? a;

  @override
  initState() {
    timer =
        Timer.periodic(const Duration(seconds: 1), (Timer t) => getRandom());
    super.initState();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  Future<void> deleteById(id) async {
    final http.Response res = await http.delete(
      Uri.parse("https://6311884019eb631f9d740d9b.mockapi.io/demoApi/" + id),
    );
  }

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
                    child: InkWell(
                      child: Container(
                        margin: const EdgeInsets.only(
                            left: 30.0, right: 30.0, top: 10.0),
                        padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: const Color.fromARGB(255, 32, 39, 42),
                        ),
                        child: const Icon(
                          Icons.arrow_back_ios_new_sharp,
                          color: Colors.white,
                        ),
                      ),
                      onTap: () {
                        Navigator.of(context).pop(true);
                      },
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: const Center(
                        child: Text(
                          'Stock Page',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(2.0),
                      margin: EdgeInsets.only(top: 10.0),
                      child: Image.network(widget.map['image']),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: const Color.fromARGB(255, 32, 39, 42),
              ),
              height: 125,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(
                              top: 20.0, left: 30.0, bottom: 10.0),
                          child: Text(
                            "${widget.map["Name"]}",
                            style: const TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(
                              left: 30.0, top: 20.0, bottom: 10.0),
                          child: const Text(
                            'current profit',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ListTile(
                    leading: const Icon(
                      FontAwesomeIcons.circleArrowUp,
                      color: Colors.white,
                    ),
                    horizontalTitleGap: 1,
                    title: Text(
                      "Rs " + "${widget.map["value"]}",
                      style: const TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    trailing: Text(
                      '+$a%',
                      style: const TextStyle(color: Colors.green, fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              margin: const EdgeInsets.only(top: 20.0),
              child: SizedBox(
                width: 400,
                height: 200,
                child: LineChart(
                  LineChartData(
                    borderData: FlBorderData(show: false),
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
                          const FlSpot(4.5, 4.9),
                          const FlSpot(5, 4),
                        ],
                        dotData: FlDotData(
                          show: false,
                        ),
                        isCurved: true,
                        colors: [
                          const Color(0xffff400b),
                        ],
                        barWidth: 3,
                        belowBarData: BarAreaData(
                          show: true,
                          colors: [
                            const Color(0xffff600b),
                            const Color(0xff000000),
                          ],
                          gradientFrom: Offset(0, 0.1),
                          gradientTo: Offset(0, 0.92),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () => showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: Column(
                          children: [
                            Image.asset(
                              "assets/images/appLogo.jpg",
                            ),
                            const Text(
                              "Are you sure you want to delete he user ? ",
                            ),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () {
                              deleteById(widget.map["id"]);
                              Navigator.of(context)
                                ..pop()
                                ..pushReplacement(
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        AllPage(),
                                  ),
                                );
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      ),
                    ),
                    child: Text(
                      "Delete",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      backgroundColor: Colors.red,
                      minimumSize: Size(150, 50),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            AddStockPage(stockModel : widget.map),
                      ));
                    },
                    child: Text(
                      "Edit",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      backgroundColor: Colors.green,
                      minimumSize: const Size(150, 50),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void getRandom() {
    setState(() {
      a = Random().nextInt(99) + 1;
    });
  }
}
