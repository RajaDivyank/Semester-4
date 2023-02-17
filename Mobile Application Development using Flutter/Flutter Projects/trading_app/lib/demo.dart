// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// // import 'package:http/http.dart';
// class Demo extends StatefulWidget {
//   const Demo({Key? key}) : super(key: key);
//
//   @override
//   State<Demo> createState() => _DemoState();
// }
//
// class _DemoState extends State<Demo> {
//   Future<dynamic> callApi() async {
//     http.Response res = await http
//         .get(Uri.parse("https://630c662f53a833c53429c1c8.mockapi.io/users"));
//     return res.body;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder(
//         future: callApi(),
//         builder: (context, snapshot) {
//           print(
//             snapshot.data.toString(),
//           );
//           return Container();
//         },
//       ),
//     );
//   }
// }
// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class Users extends StatefulWidget {
//   const Users({Key? key}) : super(key: key);
//
//   @override
//   State<Users> createState() => _UsersState();
// }
//
// class _UsersState extends State<Users> {
//   Future<dynamic> callUsersApi() async {
//     http.Response res = await http.get(
//       Uri.parse("https://6311884019eb631f9d740d9b.mockapi.io/demoApi"),
//     );
//     return res.body;
//   }
//
//   List<Widget> getListTiles(lst) {
//     List<Widget> list = [];
//     for (int i = 0; i < lst.length; i++) {
//       list.add(
//         Card(
//           child: InkWell(
//             onTap: () {
//               Map user = lst[i];
//               // Navigator.push(
//               //   context,
//               //   MaterialPageRoute(
//               //     builder: (context) => UserDetailsPage(map: user),
//               //   ),
//               // );
//             },
//             child: ListTile(
//               leading: Container(
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(100),
//                 ),
//                 clipBehavior: Clip.antiAlias,
//                 child: Image.network(lst[i]["image"].toString()),
//               ),
//               subtitle: Text(lst[i]["Name"].toString()),
//               trailing: Icon(Icons.arrow_forward_ios),
//               title: Text(
//                 lst[i]["value"].toString(),
//               ),
//             ),
//           ),
//         ),
//       );
//     }
//     return list;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Users"),
//         backgroundColor: Colors.deepOrangeAccent,
//       ),
//       body: Column(
//         children: [
//           Container(color: Colors.red,height: 100,),
//           Container(
//             height: 500,
//             child: FutureBuilder(
//               future: callUsersApi(),
//               builder: (context, snapshot) {
//                 // print(snapshot.data.toString());
//                 if (snapshot.data != null && snapshot.hasData) {
//                   List<dynamic> lst = jsonDecode(snapshot.data.toString());
//                   return ListView(
//                     children: getListTiles(lst),
//                   );
//                 } else {
//                   return Center(child: CircularProgressIndicator());
//                 }
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:trading_app/stock_detail_page.dart';

class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}
class _SalesData {
  _SalesData(this.sales);

  // DateTime year;
  final double sales;
}
class _DemoState extends State<Demo> {
  String? year;
  @override
  Widget build(BuildContext context) {
    List<_SalesData> data = [
      _SalesData(5),
      _SalesData(35),
      _SalesData(20),
      _SalesData(5),
      _SalesData(45)
    ];
    final List<Color> color = <Color>[];
    color.add(Colors.blue[50]!);
    color.add(Colors.blue[200]!);
    color.add(Colors.blue);

    final List<double> stops = <double>[];
    stops.add(0.0);
    stops.add(0.5);
    stops.add(1.0);

    final LinearGradient gradientColors =
    LinearGradient(colors: color, stops: stops);

    return Scaffold(
        body: Container(
            child: TextButton(
              onPressed: () => showDialog(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  content: const Text('AlertDialog description'),
                  title: Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/images/appLogo.jpg",
                      ),
                      Text("Are you sure you want to delete he user ? ",),
                    ],
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        // deleteById(widget.map["id"]);
                        Navigator.of(context)
                          ..pop()
                          ..pop()
                          ..pushReplacement(
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) => StockDetailPage(),
                            ),
                          );
                      },
                      child: const Text('OK'),
                    ),
                  ],
                ),
              ),
              child: Text("Delete",
                style: TextStyle(color: Colors.white),
              ),
              style: TextButton.styleFrom(
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0)),
                backgroundColor: Colors.red,
                minimumSize: Size(150, 50),
              ),
            ),
                // child: SfCartesianChart(
                //     primaryXAxis: CategoryAxis(),
                //     series: <ChartSeries>[
                //       // Renders area chart
                //       AreaSeries<_SalesData, DateTime>(
                //           dataSource: data,
                //           xValueMapper: (_SalesData sales, _) => sales.year,
                //           yValueMapper: (_SalesData sales, _) => sales.sales,
                //           gradient: gradientColors
                //       )
                //     ]
                // )

        )
    );
  }
}

