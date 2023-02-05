import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TradePage extends StatelessWidget {
  const TradePage({Key? key}) : super(key: key);

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
            child: Column(
              children: [
                getTodayData(),
                getTodayData(),
                getTodayData(),
                getTodayData(),
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
          Container(),
        ],
      ),
    );
  }

  Widget getShareData() {
    return Expanded(
      child: Container(
        child: Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  child: Text(
                    'data1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Text(
                    'data1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Text(
                    'data1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: Text(
                    'data1',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget getTodayData(){
    return Expanded(
      child: Container(
        height: 40,
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: const Color.fromARGB(255, 32, 39, 42),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                  child: Icon(FontAwesomeIcons.fontAwesome)),
            ),
            Expanded(
              child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text('1',style: TextStyle(color: Colors.white),),
                      ),
                      Container(
                        child: Text(
                          '2',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text(
                          '3',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Container(
                        child: Text(
                          '4',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ],
                  )),
            ),
            Expanded(
              child: Container(
                child: Text(
                  'data1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
