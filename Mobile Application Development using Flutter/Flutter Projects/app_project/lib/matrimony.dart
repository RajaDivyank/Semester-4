import 'package:app_project/matrimony_login_page.dart';
import 'package:flutter/material.dart';

class Matrimony extends StatelessWidget {
  const Matrimony({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Matrimony Page'),
          ),
        ),
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
                    color: const Color(0x99AAAAAA),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 50.0),
                        child: Image.asset(
                          'assets/images/logo.jpg',
                          width: 100,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: const Text(
                          'INDIA\'S \n MOST TRUSTED \n MATRIMONY BRAND',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 25,
                              height: 0.9,
                              fontFamily: 'RalewayBold'),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        padding: const EdgeInsets.all(8),
                        alignment: Alignment.center,
                        color: Colors.grey,
                        width: 250,
                        child: const Text(
                          "Matrimony",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                            fontFamily: AutofillHints.birthday,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
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
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: ((context) {
                              return const MatrimonyLoginPage();
                            }),
                          ),
                        );
                      },
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
