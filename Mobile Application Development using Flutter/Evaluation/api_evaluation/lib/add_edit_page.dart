import 'dart:convert';
import 'package:api_evaluation/laptop_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';

class AddEditPage extends StatefulWidget {
  AddEditPage({Key? key, this.laptopModel}) : super(key: key);
  dynamic laptopModel;

  @override
  State<AddEditPage> createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {
  TextEditingController _Ic = TextEditingController();
  TextEditingController _Nc = TextEditingController();
  Map<String, String> mp = {};
  var id;

  @override
  void initState() {
    super.initState();
    if (widget.laptopModel != null) {
      id = widget.laptopModel['id'].toString();
    }
    _Ic = TextEditingController(
        text: widget.laptopModel != null
            ? widget.laptopModel['name'].toString()
            : "");
    _Nc = TextEditingController(
        text: widget.laptopModel != null
            ? widget.laptopModel['LaptopName'].toString()
            : "");
  }

  Future<void> insertLaptop(Map<String, Object?> map) async {
    http.Response res = await http.post(
        Uri.parse('https://6311884019eb631f9d740d9b.mockapi.io/laptop'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(map));
  }

  Future<void> editLaptop(Map<String, Object?> map, {id}) async {
    map['id'] = id;
    http.Response res = await http.put(
        Uri.parse('https://6311884019eb631f9d740d9b.mockapi.io/laptop/' + id),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(map));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add or Edit'),
      ),
      body: ListView(
        children: [
          TextFormField(
            controller: _Ic,
            decoration: const InputDecoration(labelText: 'Laptop'),
          ),
          TextFormField(
            controller: _Nc,
            decoration: const InputDecoration(labelText: 'name'),
          ),
          TextButton(
              onPressed: () {
                setState(() {});
                Map<String, Object?> mp = {};
                mp["name"] = _Ic.text;
                mp["LaptopName"] = _Nc.text;
                if (widget.laptopModel != null) {
                  mp["id"] = widget.laptopModel!["id"];
                  editLaptop(mp, id: mp["id"]);
                } else {
                  insertLaptop(mp);
                }
                Navigator.of(context)..push(
                    MaterialPageRoute(builder: (context) => LaptopPage())..setState(() { }));
              },
              child: const Text("Submit")
          ),
        ],
      ),
    );
  }
}