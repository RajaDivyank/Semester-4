import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:async';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Timer? timer, timer1;
  double? a, b, c, d, e, f;
  Color _color = Colors.white;

  @override
  void initState() {
    super.initState();
    timer =
        Timer.periodic(const Duration(seconds: 1), (Timer t) => getRandom());
    timer1 = Timer.periodic(
        const Duration(seconds: 3), (Timer t) => getRandomColor());
  }

  @override
  void dispose() {
    timer?.cancel();
    timer1?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 17, 19),
        body: ListView(
          children: [
            Container(
              height: 150,
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 12, 17, 19),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: const CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/appLogo.jpg'),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: AnimatedContainer(
                              duration: const Duration(seconds: 5),
                              child: Center(
                                child: Text(
                                  'Money Market Controller',
                                  style: TextStyle(
                                    color: _color,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 12, 17, 19),
                      margin: const EdgeInsets.all(10.0),
                      child: const TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey,
                          prefixIcon: Icon(Icons.search, color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          hintText: ' Search',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              child: Column(
                children: [
                  getList('+$a%',images: 'assets/images/bitcoin.png', percentColor: Colors.green,name: 'BTC',value: '235856'),
                  getList('-$b%',images: 'assets/images/ethereum.png', percentColor: Colors.red,name: 'Chevron',value: '4654616'),
                  getList('+$c%',images: 'assets/images/fan.png', percentColor: Colors.green,name: 'UnitedHealth',value: '3161216'),
                  getList('-$d%',images: 'assets/images/fan.png', percentColor: Colors.red,name: 'Walmart',value: '498411'),
                  getList('+$e%',images: 'assets/images/ethereum.png', percentColor: Colors.green,name: 'Visa',value: '54545'),
                  getList('-$f%',images: 'assets/images/bitcoin.png', percentColor: Colors.red,name: 'Microsoft',value: '84845615'),
                  getList('+$c%',images: 'assets/images/fan.png', percentColor: Colors.green,name: 'USD Coin',value: '51454'),
                  getList('-$a%',images: 'assets/images/ethereum.png', percentColor: Colors.red,name: 'Ripple',value: '98746'),
                  getList('+$f%',images: 'assets/images/bitcoin.png', percentColor: Colors.green,name: 'BUSD',value: '34975'),
                  getList('-$b%',images: 'assets/images/fan.png', percentColor: Colors.red,name: 'Cardano',value: '139975'),
                  getList('+$f%',images: 'assets/images/ethereum.png', percentColor: Colors.green,name: 'Dogecoin',value: '794645'),
                  getList('-$d%',images: 'assets/images/bitcoin.png', percentColor: Colors.red,name: 'Matric Network',value: '3165453'),
                  getList('+$c%',images: 'assets/images/fan.png', percentColor: Colors.green,name: 'Solana',value: '51651651'),
                  getList('-$a%',images: 'assets/images/ethereum.png', percentColor: Colors.red,name: 'Polkadot',value: '8498461'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getList(percent, {images,percentColor,name,value}) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        tileColor: const Color.fromARGB(255, 32, 39, 42),
        leading: Image.asset(
          images,
          scale: 13,
        ),
        horizontalTitleGap: 30,
        title: Text(
          name,
          style: TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          value,
          style: TextStyle(color: Colors.grey),
        ),
        trailing: Container(
          child: Text(
            percent,
            style: TextStyle(color: percentColor),
          ),
        ),
      ),
    );
  }

  void getRandom() {
    setState(() {
      a = Random().nextInt(99) + 1;
      b = Random().nextInt(99) + 2;
      c = Random().nextInt(99) + 3;
      d = Random().nextInt(99) + 4;
      e = Random().nextInt(99) + 5;
      f = Random().nextInt(99) + 6;
    });
  }

  void getRandomColor() {
    setState(() {
      var random = Random();
      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
    });
  }
}
