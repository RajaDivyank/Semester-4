import 'package:flutter/material.dart';
import 'package:trading_app/all_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

import 'package:trading_app/home_page.dart';
import 'package:trading_app/stock_detail_page.dart';

class AddStockPage extends StatefulWidget {
  AddStockPage({Key? key, this.stockModel}) : super(key: key);
  dynamic stockModel;

  @override
  State<AddStockPage> createState() => _AddStockPageState();
}

class _AddStockPageState extends State<AddStockPage> {
  var id;
  TextEditingController stockNameController = TextEditingController();
  TextEditingController valuesController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  Map<String, String> map = {};

  @override
  void initState() {
    if (widget.stockModel != null) {
      id = widget.stockModel['id'].toString();
    }
    stockNameController = TextEditingController(
        text: widget.stockModel != null
            ? widget.stockModel['Name'].toString()
            : '');
    valuesController = TextEditingController(
        text: widget.stockModel != null
            ? widget.stockModel['value'].toString()
            : '');
  }

  Future<void> insertStock(Map<String, String> map) async {
    map["image"] =
        "https://images.ctfassets.net/hrltx12pl8hq/3Mz6t2p2yHYqZcIM0ic9E2/3b7037fe8871187415500fb9202608f7/Man-Stock-Photos.jpg?fit=fill&w=480&h=270";
    print(map);
    http.Response res = await http.post(
        Uri.parse("https://6311884019eb631f9d740d9b.mockapi.io/demoApi"),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(map));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.grey,
          body: Form(
            key: formKey,
            child: ListView(
              padding: const EdgeInsets.only(top: 50.0),
              children: [
                Container(
                  child:
                      Image.asset('assets/images/appLogo-removebg-preview.png'),
                  height: 200,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: stockNameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Stock Name',
                    ),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Name is required");
                      }
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    controller: valuesController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Stock Value',
                    ),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("Value is required");
                      }
                    },
                  ),
                ),
                // Container(
                //   child: TextButton(
                //     onPressed: () => showDialog(
                //       context: context,
                //       builder: (BuildContext context) => AlertDialog(
                //         content: const Text('AlertDialog description'),
                //         title: Column(
                //           children: [
                //             Text(
                //               "Are you sure you want to sign up",
                //             ),
                //           ],
                //         ),
                //         actions: [
                //           TextButton(
                //             onPressed: () {
                //               Navigator.pop(context);
                //             },
                //             child: const Text('Cancel'),
                //           ),
                //           TextButton(
                //             onPressed: () {
                //               if (formKey.currentState!.validate()) {
                //                 map['Name'] = stockNameController.text.toString();
                //                 map['value'] = valuesController.text.toString();
                //                 if (widget.stockModel == null) {
                //                   insertStock(map);
                //                 } else {
                //                   print(id);
                //                   updateInApi(
                //                     map,
                //                     id: id.toString(),
                //                   );
                //                 }
                //                 // print(map);
                //                 Navigator.of(context)
                //                   ..pop()
                //                   ..pushReplacement(
                //                     MaterialPageRoute<void>(
                //                       builder: (BuildContext context) =>
                //                           HomePage(),
                //                     ),
                //                   );
                //               }
                //             },
                //             child: const Text('OK'),
                //           ),
                //         ],
                //       ),
                //     ),
                //     child: Text('Submit',style: TextStyle(color: Colors.white),),
                //     style: TextButton.styleFrom(
                //       shape:  RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(30.0),
                //       ),
                //       backgroundColor: Colors.green,
                //       minimumSize: const Size(150, 50),
                //     ),
                //   ),
                // ),
                Container(
                  height: 50,
                  margin: const EdgeInsets.all(50.0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.red),
                  child: TextButton(
                    child: const Text(
                      'Submit',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        map['Name'] = stockNameController.text.toString();
                        map['value'] = valuesController.text.toString();
                        if (widget.stockModel == null) {
                          insertStock(map);
                        }
                        // } else {
                        //   print(id);
                        //   updateInApi(
                        //     map,
                        //     id: id.toString(),
                        //   );
                        // }
                        // print(map);
                        Navigator.of(context)
                          ..push(
                            MaterialPageRoute(
                                builder: (BuildContext context) => AllPage()),
                          )
                          ..setState(() {});
                      }
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }
// Future<void> updateInApi(Map<String, String> map, {id}) async {
//   map["id"] = id.toString();
//   http.Response res = await http.put(
//     Uri.parse(
//         "https://630c662f53a833c53429c1c8.mockapi.io/users/" + id.toString()),
//     body: jsonEncode(map),
//   );
// }
}
