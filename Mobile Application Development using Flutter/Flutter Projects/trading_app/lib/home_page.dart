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
  Timer? timer;
  double? a,b,c,d,e,f;
  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (Timer t) => getRandom());
  }

  @override
  void dispose() {
    timer?.cancel();
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
              flex: 1,
              child: Container(
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 4,
              child: ListView(
                children: [
                  getList('+$a%',percentColor: Colors.green),
                  getList('-$b%',percentColor: Colors.red),
                  getList('+$c%',percentColor: Colors.green),
                  getList('-$d%',percentColor: Colors.red),
                  getList('+$e%',percentColor: Colors.green),
                  getList('-$f%',percentColor: Colors.red),
                  getList('+$c%',percentColor: Colors.green),
                  getList('-$a%',percentColor: Colors.red),
                  getList('+$f%',percentColor: Colors.green),
                  getList('-$b%',percentColor: Colors.red),
                  getList('+$f%',percentColor: Colors.green),
                  getList('-$d%',percentColor: Colors.red),
                  getList('+$c%',percentColor: Colors.green),
                  getList('-$a%',percentColor: Colors.red),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getList(percent,{percentColor}) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: ListTile(
        tileColor: const Color.fromARGB(255, 32, 39, 42),
        leading: Image.asset('assets/images/bitcoin.png',scale: 13,),
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
          child: Text(percent,style: TextStyle(color: percentColor),),
        ),
      ),
    );
  }
  void getRandom(){
    setState(() {
      a = Random().nextInt(99) + 1;
      b = Random().nextInt(99) + 2;
      c = Random().nextInt(99) + 3;
      d = Random().nextInt(99) + 4;
      e = Random().nextInt(99) + 5;
      f = Random().nextInt(99) + 6;
    });
  }
}
