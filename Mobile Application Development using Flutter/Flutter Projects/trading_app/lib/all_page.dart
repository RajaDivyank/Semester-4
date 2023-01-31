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
  int selectedindex = 1;
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
        body: widgetslist[selectedindex],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
              // sets the background color of the `BottomNavigationBar`
              canvasColor: const Color.fromARGB(255, 32, 39, 42),
              // sets the active color of the `BottomNavigationBar` if `Brightness` is light
              primaryColor: Colors.white,
              textTheme: Theme.of(context)
                  .textTheme
                  .copyWith(caption: new TextStyle(color: Colors.yellow))),
          child: BottomNavigationBar(
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
