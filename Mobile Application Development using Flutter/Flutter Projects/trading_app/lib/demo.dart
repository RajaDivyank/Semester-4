import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dio/dio.dart';

String? stringResponse;
Map? mapResponse;
Map? dataResponse;
class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  Future apiCall() async {
    http.Response response ;
    response = await http.get(Uri.parse('https://reqres.in/api/users/2'));
    if(response.statusCode == 200){
      setState(() {
        // stringResponse = response.body;
        mapResponse = jsonDecode(response.body);
        dataResponse = mapResponse!['data'];
      });
    }
  }
  @override
  void initState() {
    apiCall();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListTile(
          title: mapResponse == null ? Container() : Text(mapResponse!['data'].toString()),
          subtitle: dataResponse == null ? Container() : Text(dataResponse!['first_name'].toString()),
        ),
      ),
    ); 
  }
}
