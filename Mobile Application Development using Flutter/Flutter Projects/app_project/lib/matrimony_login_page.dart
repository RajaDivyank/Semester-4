import 'package:flutter/material.dart';

class MatrimonyLoginPage extends StatelessWidget {
  MatrimonyLoginPage({Key? key}) : super(key: key);
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();

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
            Expanded(
              child: Container(
                child: Card(
                  elevation: 10,
                  margin: const EdgeInsets.only(top: 100.0,left: 10.0,right: 10.0),
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
                          controller: userNameController,
                          decoration:
                              const InputDecoration(border: OutlineInputBorder(),labelText: "Enter Name"),
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
                          controller: passwordController,
                          obscureText: true,
                          obscuringCharacter: "*",
                          decoration:
                          const InputDecoration(border: OutlineInputBorder(),labelText: "Enter Password"),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(
                          child: Container(
                            color: const Color.fromARGB(255, 139, 195, 75),
                            child: TextButton(
                              onPressed: () {
                                print('UserName = ${userNameController.text.toString()}');
                                print('Password = ${passwordController.text.toString()}');
                              },
                              child: const Text(
                                'LOGIN',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
