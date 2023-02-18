import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:trading_app/add_stock_page.dart';
import 'dart:convert';
import 'dart:async';
import 'dart:math';

import 'package:trading_app/stock_detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  // dynamic map;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<dynamic> callUserListApi() async {
    http.Response res = await http.get(
      Uri.parse("https://6311884019eb631f9d740d9b.mockapi.io/demoApi"),
    );
    return res.body;
  }

  Timer? timer1;
  Color _color = Colors.white;

  @override
  void initState() {
    super.initState();

    timer1 = Timer.periodic(
        const Duration(seconds: 3), (Timer t) => getRandomColor());
  }

  @override
  void dispose() {
    timer1?.cancel();
    super.dispose();
  }

  List<Widget> getListTiles(lst) {
    List<Widget> list = [];
    for (int i = 0; i < lst.length; i++) {
      list.add(
        Card(
          elevation: 5,
          color: const Color.fromARGB(255, 32, 39, 42),
          margin: const EdgeInsets.all(5),
          child: InkWell(
            onTap: () {
              Map user = lst[i];
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => StockDetailPage(map: user),
                ),
              );
            },
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                clipBehavior: Clip.antiAlias,
                child: Image.network(lst[i]["image"].toString()),
              ),
              subtitle: Text(
                lst[i]["value"].toString(),
                style: const TextStyle(color: Colors.grey),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 13,
              ),
              title: Text(
                lst[i]["Name"].toString(),
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
      );
    }
    return list;
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
                          ),
                          Expanded(
                            child: InkWell(
                              child: const Icon(
                                FontAwesomeIcons.userPlus,
                                color: Colors.white,
                              ),
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                  return AddStockPage(stockModel:null);
                                },)).then((value) {
                                  if(value==true){
                                    setState(() {});
                                  }
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 12, 17, 19),
                      margin: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        decoration: const InputDecoration(
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
              height: 600,
              child: RefreshIndicator(
                onRefresh: () async {
                  setState(() {});
                },
                child: FutureBuilder(
                  future: callUserListApi(),
                  builder: (context, snapshot) {
                    if (snapshot.data != null && snapshot.hasData) {
                      List<dynamic> lst = jsonDecode(snapshot.data.toString());
                      return ListView(
                        children: getListTiles(lst),
                      );
                    } else {
                      return const Center(child: CircularProgressIndicator());
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
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
