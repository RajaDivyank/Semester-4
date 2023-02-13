import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'dart:async';
import 'dart:math';
/*import 'package:url_launcher/url_launcher.dart';*/

class TradePage extends StatefulWidget {
  const TradePage({Key? key}) : super(key: key);

  @override
  State<TradePage> createState() => _TradePageState();
}
class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}

class _TradePageState extends State<TradePage> {
  double? _rating;
  IconData? _selectedIcon;
  var controller = PageController();
  Timer? timer;
  double? randompercent1, randompercent2, randompercent3;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(const Duration(seconds: 1), (Timer t) => getRandom());
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }
  List<_SalesData> data = [
    _SalesData('Jan', 2),
    _SalesData('Feb', 1),
    _SalesData('Mar', 3),
    _SalesData('Apr', 2),
    _SalesData('May', 5),
    _SalesData('May', 3)
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 17, 19),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 80,
              child: Row(children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Today\'s gains',
                      style: GoogleFonts.actor(
                        textStyle:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      'More',
                      style: GoogleFonts.actor(
                          textStyle: const TextStyle(
                              fontSize: 15, color: Colors.green)),
                    ),
                  ),
                ),
              ]),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 240,
                    child: PageView(
                      controller: controller,
                      children: [
                        getTodayGain(),
                        getTodayGain(),
                        getTodayGain(),
                      ],
                    ),
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              child: Row(children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Merchants sell',
                      style: GoogleFonts.actor(
                        textStyle:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      'More',
                      style: GoogleFonts.actor(
                          textStyle: const TextStyle(
                              fontSize: 15, color: Colors.green)),
                    ),
                  ),
                ),
              ]),
            ),
            Column(
              children: [
                getMerchantSell('Muzi',
                    images: 'assets/images/bitcoin.png',
                    name1: 'BTC',
                    name2: '3577.34',
                    name3: '64392',
                    name4: '140-180'),
                getMerchantSell('Purpy',
                    images: 'assets/images/ethereum.png',
                    name1: 'LTC',
                    name2: '30.37',
                    name3: '72888',
                    name4: '180-240'),
                getMerchantSell('Zomen',
                    images: 'assets/images/fan.png',
                    name1: 'ETH',
                    name2: '48.632',
                    name3: '29632',
                    name4: '190-290'),
                getMerchantSell('Gode',
                    images: 'assets/images/bitcoin.png',
                    name1: 'XRH',
                    name2: '20.37',
                    name3: '69874',
                    name4: '360-720')
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget getTodayGain() {
    return Column(
      children: [
        getTodayData('assets/images/bitcoin.png',
            name: 'BTC',
            value1: '244.44',
            value2: '52364',
            percent: '+$randompercent1',
            percentcolor: Colors.green,
            icons: FontAwesomeIcons.upLong,
            iconscolor: Colors.green,
            graphcolor: Colors.green),
        getTodayData('assets/images/ethereum.png',
            name: 'ETH',
            value1: '568.24',
            value2: "65789",
            percent: '-$randompercent2',
            percentcolor: Colors.red,
            icons: FontAwesomeIcons.downLong,
            iconscolor: Colors.red,graphcolor: Colors.red),
        getTodayData('assets/images/fan.png',
            name: 'XRH',
            value1: '696.89',
            value2: '13975',
            percent: '+$randompercent3',
            percentcolor: Colors.green,
            icons: FontAwesomeIcons.upLong,
            iconscolor: Colors.green,graphcolor: Colors.green),
      ],
    );
  }

  Widget getTodayData(images,
      {name, value1, value2, percent, percentcolor, icons, iconscolor,graphcolor}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color.fromARGB(255, 32, 39, 42),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                child: Image.asset(
                  images,
                  height: 40,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(
                        top: 20.0,
                        right: 50.0,
                      ),
                      child: Text(
                        name,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 5.0, right: 50.0),
                      child: Text(
                        value1,
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 20.0, right: 50.0),
                      child: Text(
                        value2,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 40.0, top: 5.0),
                      child: Row(
                        children: [
                          Text(
                            percent,
                            style: TextStyle(color: percentcolor),
                          ),
                          Icon(
                            icons,
                            size: 12,
                            color: iconscolor,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 50,
                width: 20,
                child: SfSparkLineChart.custom(
                  color: graphcolor,
                  //Enable the trackball
                  trackball: SparkChartTrackball(
                      activationMode: SparkChartActivationMode.tap),
                  //Enable marker
                  marker: SparkChartMarker(
                      displayMode: SparkChartMarkerDisplayMode.all),
                  //Enable data label
                  labelDisplayMode: SparkChartLabelDisplayMode.all,
                  xValueMapper: (int index) => data[index].year,
                  yValueMapper: (int index) => data[index].sales,
                  dataCount: 6,
                  axisLineColor: Color.fromARGB(255, 32, 39, 42),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getMerchantSell(name, {images,name1, name2, name3, name4, ratingvalue}) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
      margin: const EdgeInsets.all(10.0),
      child: Card(
        color: const Color.fromARGB(255, 32, 39, 42),
        child: Column(
          children: [
            ListTile(
              title: Text(
                name,
                style: const TextStyle(color: Colors.grey),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage(images),
                maxRadius: 15,
              ),
              trailing: Container(
                child: RatingBar.builder(
                  initialRating: _rating ?? 0.0,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                  itemBuilder: (context, _) => Icon(
                    _selectedIcon ?? Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    _rating = ratingvalue;
                    setState(() {});
                  },
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: const Icon(
                                    FontAwesomeIcons.squareInstagram,
                                    color: Colors.white38,
                                    size: 20,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Text(
                                    name1,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: const Icon(
                                  FontAwesomeIcons.database,
                                  color: Colors.white38,
                                  size: 17,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  name2,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 5.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: const Icon(
                                    FontAwesomeIcons.yenSign,
                                    color: Colors.white38,
                                    size: 20,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Text(
                                    name3,
                                    style: const TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                child: const Icon(
                                  FontAwesomeIcons.chartPie,
                                  color: Colors.white38,
                                  size: 17,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  name4,
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: TextButton(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.red),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 10),
                          child: Text(
                            'BUY',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      onPressed: () {},
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
      randompercent1 = Random().nextInt(99) + 1;
      randompercent2 = Random().nextInt(99) + 5;
      randompercent3 = Random().nextInt(99) + 3;
    });
  }
}