import 'package:flutter/material.dart';

class MatrimonyLoginPage extends StatelessWidget {
  const MatrimonyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Login Page'),
          ),
        ),
        body: Row(
          children: [
            Expanded(child: Container()),
            Expanded(
              child: Container(
                child: Card(
                  elevation: 10,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Container(
                      //   margin: const EdgeInsets.all(10.0),
                      //   child: const Text(
                      //     'Enter User Name',
                      //     style: TextStyle(fontSize: 20),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          decoration:
                              InputDecoration(border: OutlineInputBorder(),labelText: "Enter Name"),
                        ),
                      ),
                      // Container(
                      //   margin: const EdgeInsets.all(10.0),
                      //   child: const Text(
                      //     'Enter Password',
                      //     style: TextStyle(fontSize: 20),
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration:
                          InputDecoration(border: OutlineInputBorder(),labelText: "Enter Password"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              flex: 2,
            ),
            Expanded(child: Container()),
          ],
        ),
      ),
    );
  }
}
