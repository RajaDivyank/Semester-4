import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  double? _rating;
  IconData? _selectedIcon;
  var controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                      'Today\'s gains',
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
              flex: 3,
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
                    effect: ExpandingDotsEffect(),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Merchants sell',
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
              flex: 3,
              child: ListView(
                children: <Widget>[
                  getMerchantSell('Muzi',
                      name1: 'BTC',
                      name2: '3577.34',
                      name3: '64392',
                      name4: '140-180'),
                  getMerchantSell('Purpy',
                      name1: 'LTC',
                      name2: '30.37',
                      name3: '72888',
                      name4: '180-240'),
                  getMerchantSell('Zomen',
                      name1: 'ETH',
                      name2: '48.632',
                      name3: '29632',
                      name4: '190-290'),
                  getMerchantSell('Gode',
                      name1: 'XRH',
                      name2: '20.37',
                      name3: '69874',
                      name4: '360-720')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getTodayGain() {
    return Column(
      children: [getTodayData(), getTodayData(), getTodayData()],
    );
  }

  Widget getTodayData() {
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
                  'assets/images/bitcoin.png',
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
                      padding: EdgeInsets.only(top: 20.0, right: 50.0, left: 1),
                      child: Text(
                        'data1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(top: 5.0, right: 50.0),
                      child: Text(
                        'data2',
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
                      padding: EdgeInsets.only(top: 15.0, right: 50.0),
                      child: Text(
                        'data',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(right: 50.0),
                      child: Text(
                        'data',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getMerchantSell(name, {name1, name2, name3, name4, ratingvalue}) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
      margin: EdgeInsets.all(10.0),
      child: Card(
        color: const Color.fromARGB(255, 32, 39, 42),
        child: Column(
          children: [
            ListTile(
              title: Text(
                name,
                style: TextStyle(color: Colors.grey),
              ),
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/bitcoin.png'),
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
              margin: EdgeInsets.only(bottom: 10.0),
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
                                  child: Icon(
                                    FontAwesomeIcons.apple,
                                    color: Colors.white38,
                                    size: 20,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Text(
                                    name1,
                                    style: TextStyle(color: Colors.white),
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
                                child: Icon(
                                  FontAwesomeIcons.database,
                                  color: Colors.white38,
                                  size: 20,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  name2,
                                  style: TextStyle(color: Colors.white),
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
                                  child: Icon(
                                    FontAwesomeIcons.apple,
                                    color: Colors.white38,
                                    size: 20,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  child: Text(
                                    name3,
                                    style: TextStyle(color: Colors.white),
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
                                child: Icon(
                                  FontAwesomeIcons.circlePlay,
                                  color: Colors.white38,
                                  size: 20,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                child: Text(
                                  name4,
                                  style: TextStyle(color: Colors.white),
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
}
