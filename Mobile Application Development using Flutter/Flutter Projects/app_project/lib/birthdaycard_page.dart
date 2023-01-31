import 'package:flutter/material.dart';

class BirthdatCard extends StatelessWidget {
  const BirthdatCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/birthdaycardbackground.jpg',
            fit: BoxFit.fill,
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 550, top: 50),
            child: Image.asset(
              'assets/images/game1.jfif',
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 200, left: 50, right: 50),
            child: Image.asset(
              'assets/images/download.png',
            ),
          ),
          Image.asset(
            'assets/images/transparentName.png',
          ),
          Container(
            margin: const EdgeInsets.only(top: 500),
            child: const Text(
              '"Wishing you a day\n filled with happiness and\n a year filled with joy"',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: AutofillHints.birthday,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
