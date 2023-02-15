import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// import 'package:http/http.dart';
class Demo extends StatefulWidget {
  const Demo({Key? key}) : super(key: key);

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  Future<dynamic> callApi() async {
    http.Response res = await http
        .get(Uri.parse("https://630c662f53a833c53429c1c8.mockapi.io/users"));
    return res.body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: callApi(),
        builder: (context, snapshot) {
          print(
            snapshot.data.toString(),
          );
          return Container();
        },
      ),
    );
  }
}
