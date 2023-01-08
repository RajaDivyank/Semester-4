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
        body: Column(
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Container(
                    color: Colors.lightBlue[400],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
