import 'package:flutter/material.dart';
import 'package:trading_app/all_page.dart';
import 'dart:async';
import 'dart:math';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey,
        resizeToAvoidBottomInset: true,
        body: Center(
          child: Form(
            key: formKey,
            child: ListView(
              children: <Widget>[
                Container(
                  child: Image.asset('assets/images/appLogo-removebg-preview.png'),
                  height: 200,
                ),
                Container(
                  child: const Center(
                    child: Text(
                      'Money Market Controller',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  padding: const EdgeInsets.all(10),
                  child: TextFormField(
                    controller: userNameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                    validator: (value) {
                      if(value!=null){
                        if(value.isEmpty){
                          return 'Enter User Name';
                        }
                        if(value.length<5){
                          return 'Enter Valid User Name';
                        }
                      }
                    },
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: TextFormField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                    validator: (value) {
                      if(value!=null){
                        if(value.isEmpty){
                          return 'Enter Password';
                        }
                        if(value.length<4){
                          return 'Enter Valid Password';
                        }
                      }
                    },
                  ),
                ),
                TextButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  child: const Text(
                    'Forgot Password',
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Login'),
                      onPressed: () {
                        if(formKey.currentState!.validate()){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                              return AllPage();
                            },));
                        }
                      },
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Text('Does not have account?'),
                    TextButton(
                      child: const Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
