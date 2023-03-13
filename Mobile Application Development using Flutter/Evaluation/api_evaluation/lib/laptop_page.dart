import 'dart:convert';
import 'package:api_evaluation/add_edit_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LaptopPage extends StatefulWidget {
  const LaptopPage({Key? key}) : super(key: key);

  @override
  State<LaptopPage> createState() => _LaptopPageState();
}

class _LaptopPageState extends State<LaptopPage> {
  //For Get Laptop List
  Future<dynamic> laptopList() async {
    http.Response res = await http.get(
      Uri.parse('https://6311884019eb631f9d740d9b.mockapi.io/laptop'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    return res.body;
  }

  //For Delete Laptop
  Future<dynamic> deleteById(id) async {
    http.Response res = await http.delete(
      Uri.parse('https://6311884019eb631f9d740d9b.mockapi.io/laptop/' + id),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Laptop'),
            InkWell(
              child: const Icon(Icons.add),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AddEditPage(laptopModel: null);
                  },
                ));
              },
            )
          ],
        ),
      ),
      body: FutureBuilder(
        future: laptopList(),
        builder: (context, snapshot) {
          if (snapshot.data != null && snapshot.hasData) {
            List<dynamic> lst = jsonDecode(snapshot.data.toString());
            return ListView(
              children: getLaptopList(lst),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  List<Widget> getLaptopList(lst) {
    List<Widget> list = [];
    for (int i = 0; i < lst.length; i++) {
      list.add(Card(
        child: ListTile(
          subtitle: Text(lst[i]['name'].toString()),
          title: Text(lst[i]["LaptopName"].toString()),
          trailing: Container(
            width: 50,
            child: Row(
              children: [
                InkWell(
                  child: const Icon(Icons.delete),
                  onTap: () {
                    setState(() {
                      deleteById(lst[i]["id"]);
                    });
                  },
                ),
                InkWell(
                  child: const Icon(Icons.edit),
                  onTap: () {
                    Map laptops = lst[i];
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return AddEditPage(laptopModel: laptops);
                      },
                    ));
                  },
                )
              ],
            ),
          ),
        ),
      ));
    }
    return list;
  }
}
