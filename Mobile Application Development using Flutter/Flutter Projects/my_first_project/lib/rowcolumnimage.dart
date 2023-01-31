import 'package:flutter/material.dart';

class RowColumnImage extends StatelessWidget {
  const RowColumnImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.amber,
        body: Container(
          margin: EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    imageParts(flex: 2, image: 'assets/images/forlick.jpeg'),
                    imageParts(flex: 3, image: 'assets/images/Kruta1.jpeg'),
                    imageParts(flex: 1, image: 'assets/images/kruta3.jpeg'),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                imageParts(
                                    flex: 3, image: 'assets/images/suit2.jpeg'),
                                imageParts(
                                    flex: 1,
                                    image: 'assets/images/nyari2.jpeg'),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                imageParts(
                                    flex: 1, image: 'assets/images/suit1.jpeg'),
                                imageParts(
                                    flex: 1, image: 'assets/images/suit2.jpeg'),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          imageParts(
                              flex: 1, image: 'assets/images/kruta3.jpeg'),
                          imageParts(
                              flex: 1, image: 'assets/images/kruta3.jpeg'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget imageParts({flex, image}) {
    return Expanded(
      flex: flex,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(5),
        color: Colors.blue,
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}
