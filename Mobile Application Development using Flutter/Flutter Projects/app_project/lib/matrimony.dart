import 'package:flutter/material.dart';

class Matrimony extends StatelessWidget {
  const Matrimony({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/Login_image.jpg',
                    fit: BoxFit.cover,
                  ),
                  Container(
                    color: Colors.black12.withOpacity(0.3),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 100),
                    child: const Text(
                      'INDIA\'S \n MOST TRUSTED \n MATRIMONY BRAND',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 28, height: 0.9, fontFamily: 'RalewayBold'),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 139, 195, 75),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'LOGIN',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 66, 54, 43),
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'SIGNUP ->',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
