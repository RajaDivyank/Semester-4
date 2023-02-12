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
        body: Column(
          children: [
            Expanded(
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
                                    AssetImage('assets/images/stock.png'),
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
            Expanded(
              flex: 4,
              child: ListView(
                children: [
                  getList('+$a%', percentColor: Colors.green),
                  getList('-$b%', percentColor: Colors.red),
                  getList('+$c%', percentColor: Colors.green),
                  getList('-$d%', percentColor: Colors.red),
                  getList('+$e%', percentColor: Colors.green),
                  getList('-$f%', percentColor: Colors.red),
                  getList('+$c%', percentColor: Colors.green),
                  getList('-$a%', percentColor: Colors.red),
                  getList('+$f%', percentColor: Colors.green),
                  getList('-$b%', percentColor: Colors.red),
                  getList('+$f%', percentColor: Colors.green),
                  getList('-$d%', percentColor: Colors.red),
                  getList('+$c%', percentColor: Colors.green),
                  getList('-$a%', percentColor: Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getList(percent, {percentColor}) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        tileColor: const Color.fromARGB(255, 32, 39, 42),
        leading: Image.asset(
          'assets/images/bitcoin.png',
          scale: 13,
        ),
        horizontalTitleGap: 30,
        title: const Text(
          '1',
          style: TextStyle(color: Colors.white),
        ),
        subtitle: const Text(
          '2',
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
