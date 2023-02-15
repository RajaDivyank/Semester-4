import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<dynamic> callUserListApi() async {
    http.Response res = await http
        .get(Uri.parse('https://6311884019eb631f9d740d9b.mockapi.io/demoApi'));
    return res.body;
  }

  Timer? timer, timer1;
  double? a, b, c, d, e, f;
  Color _color = Colors.white;

  @override
  void initState() {
    super.initState();
    // timer =
    //     Timer.periodic(const Duration(seconds: 1), (Timer t) => getRandom());
    // timer1 = Timer.periodic(
    //     const Duration(seconds: 3), (Timer t) => getRandomColor());
  }

  @override
  void dispose() {
    timer?.cancel();
    timer1?.cancel();
    super.dispose();
  }

  List<Widget> getUserList(lists, {percent, percentColor}) {
    List<Widget> list = [];
    // print(list.toString());
    // for (int i = 0; i < lists.length; i++) {
    //   list.add(Container(
    //     padding: const EdgeInsets.all(10.0),
    //     child: ListTile(
    //       tileColor: const Color.fromARGB(255, 32, 39, 42),
    //       leading: Image.network(
    //         lists[i]["image"].toString(),
    //         scale: 13,
    //       ),
    //       horizontalTitleGap: 30,
    //       title: Text(
    //         lists[i]["Name"].toString(),
    //         style: const TextStyle(color: Colors.white),
    //       ),
    //       subtitle: Text(
    //         lists[i]["value"].toString(),
    //         style: const TextStyle(color: Colors.grey),
    //       ),
    //       trailing: Container(
    //         child: Text(
    //           percent,
    //           style: TextStyle(color: percentColor),
    //         ),
    //       ),
    //     ),
    //   ));
    // }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 12, 17, 19),
        // body: FutureBuilder(
        //   future: callUserListApi(),
        //   builder: (context, snapshot) {
        //     jsonDecode()snapshot.data.toString()
        //     return Container();
        //   },
        // ),
        // body: ListView(
        //   children: [
        //     // Container(
        //     //   height: 150,
        //     //   child: Column(
        //     //     children: [
        //     //       Expanded(
        //     //         child: Container(
        //     //           color: const Color.fromARGB(255, 12, 17, 19),
        //     //           child: Row(
        //     //             children: [
        //     //               Expanded(
        //     //                 child: Container(
        //     //                   child: const CircleAvatar(
        //     //                     backgroundImage:
        //     //                         AssetImage('assets/images/appLogo.jpg'),
        //     //                   ),
        //     //                 ),
        //     //               ),
        //     //               Expanded(
        //     //                 flex: 4,
        //     //                 child: AnimatedContainer(
        //     //                   duration: const Duration(seconds: 5),
        //     //                   child: Center(
        //     //                     child: Text(
        //     //                       'Money Market Controller',
        //     //                       style: TextStyle(
        //     //                         color: _color,
        //     //                         fontSize: 20,
        //     //                       ),
        //     //                     ),
        //     //                   ),
        //     //                 ),
        //     //               )
        //     //             ],
        //     //           ),
        //     //         ),
        //     //       ),
        //     //       Expanded(
        //     //         child: Container(
        //     //           color: const Color.fromARGB(255, 12, 17, 19),
        //     //           margin: const EdgeInsets.all(10.0),
        //     //           child: const TextField(
        //     //             decoration: InputDecoration(
        //     //               filled: true,
        //     //               fillColor: Colors.grey,
        //     //               prefixIcon: Icon(Icons.search, color: Colors.white),
        //     //               border: OutlineInputBorder(
        //     //                 borderRadius: BorderRadius.all(
        //     //                   Radius.circular(10),
        //     //                 ),
        //     //               ),
        //     //               hintText: ' Search',
        //     //             ),
        //     //           ),
        //     //         ),
        //     //       )
        //     //     ],
        //     //   ),
        //     // ),
        //     FutureBuilder(
        //       future: callUserListApi(),
        //       builder: (context, snapshot) {
        //         if (snapshot.data != null && snapshot.hasData) {
        //           List<dynamic> lists = jsonDecode(snapshot.data.toString());
        //           print(lists);
        //           return ListView(
        //             // children: getUserList(lists),
        //           );
        //         } else {
        //           return const Center(child: CircularProgressIndicator());
        //         }
        //       },
        //     ),
        //   ],
        // ),
        body: FutureBuilder(
          future: callUserListApi(),
          builder: (context, snapshot) {
            if (snapshot.data != null && snapshot.hasData) {
              List<dynamic> lists = jsonDecode(snapshot.data.toString());
              print(lists);
              return ListView(
                // children: getUserList(lists),
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }

  Widget getList(percent, {images, percentColor, name, value}) {
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
          style: const TextStyle(color: Colors.white),
        ),
        subtitle: Text(
          value,
          style: const TextStyle(color: Colors.grey),
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

  // void getRandom() {
  //   setState(() {
  //     a = Random().nextInt(99) + 1;
  //     b = Random().nextInt(99) + 2;
  //     c = Random().nextInt(99) + 3;
  //     d = Random().nextInt(99) + 4;
  //     e = Random().nextInt(99) + 5;
  //     f = Random().nextInt(99) + 6;
  //   });
  // }

  // void getRandomColor() {
  //   setState(() {
  //     var random = Random();
  //     _color = Color.fromRGBO(
  //       random.nextInt(256),
  //       random.nextInt(256),
  //       random.nextInt(256),
  //       1,
  //     );
  //   });
  // }
}
