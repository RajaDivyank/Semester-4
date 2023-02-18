import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:trading_app/home_page.dart';
import 'package:trading_app/issue_page.dart';
import 'package:trading_app/market_page.dart';
import 'package:trading_app/mine_page.dart';
import 'package:trading_app/trade_page.dart';

class AllPage extends StatefulWidget {
  const AllPage({Key? key}) : super(key: key);
  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {
  int selectedindex = 0;
  List<Widget> widgetslist = const [
    HomePage(),
    MarketPage(),
    IssuePage(),
    TradePage(),
    MinePage()
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 17, 19),
        body: widgetslist[selectedindex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0),),
          child: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 30, 37, 42),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.house),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.chartSimple),
                label: 'Market',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.circleQuestion),
                label: 'Issue',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.moneyBillTrendUp),
                label: 'Trade',
              ),
              BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.userGraduate),
                label: 'Mine',
              ),
            ],
            currentIndex: selectedindex,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                selectedindex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
