import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class TradePage extends StatefulWidget {
  const TradePage({Key? key}) : super(key: key);

  @override
  State<TradePage> createState() => _TradePageState();
}

class _TradePageState extends State<TradePage> {
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
              flex: 3,
              child: ListView(
                children: [],
              )),
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
            child: getMerchantSell(),
          ),
        ],
      ),
    );
  }

  Widget getTodayData() {
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
                child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage('assets/images/bitcoin.png'),
              ),
            ),),
            Expanded(
                flex: 2,
                child: ListTile(
                  textColor: Colors.white,
                  title: Text('BTC'),
                  subtitle:
                      Text('24475.44', style: TextStyle(color: Colors.grey)),
                ),),
            Expanded(
              flex: 2,
              child: ListTile(
                textColor: Colors.white,
                title: Text('357.34'),
                subtitle: Text('+0.26%', style: TextStyle(color: Colors.grey)),
              ),
            ),
            Expanded(
              child: ListTile(
                trailing: Icon(
                  FontAwesomeIcons.apple,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getMerchantSell() {
    return Card(
      color: const Color.fromARGB(255, 32, 39, 42),
      child: Column(
        children: [
          ListTile(
            title: Text('Muzi',style: TextStyle(color: Colors.grey),),
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/bitcoin.png'),
            ),
          ),
        ],
      ),
    );
  }
}
