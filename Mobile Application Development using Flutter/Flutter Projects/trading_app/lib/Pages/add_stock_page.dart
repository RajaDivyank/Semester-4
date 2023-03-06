import 'package:flutter/material.dart';
import 'package:trading_app/Pages/all_page.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

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
  TextEditingController imageController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  Map<String, String> map = {};

  @override
  void initState() {
    if (widget.stockModel != null) {
      id = widget.stockModel['id'].toString();
    }
    imageController = TextEditingController(
        text: widget.stockModel != null
            ? widget.stockModel['image'].toString()
            : '');
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
                    controller: imageController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Image Url',
                    ),
                    validator: (value) {
                      var passNonNullValue = value ?? "";
                      if (passNonNullValue.isEmpty) {
                        return ("image is required");
                      }
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                      setState(() {});
                      if (formKey.currentState!.validate()) {
                        map['Name'] = stockNameController.text.toString();
                        map['value'] = valuesController.text.toString();
                        if (widget.stockModel == null) {
                          insertStock(map);
                        } else {
                          updateStock(
                            map,
                            id: id.toString(),
                          );
                        }
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
Future<void> updateStock(Map<String, String> map, {id}) async {
  map["id"] = id.toString();
  http.Response res = await http.put(
    Uri.parse(
        "https://6311884019eb631f9d740d9b.mockapi.io/demoApi/" + id.toString()),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(map),
  );
}
}
