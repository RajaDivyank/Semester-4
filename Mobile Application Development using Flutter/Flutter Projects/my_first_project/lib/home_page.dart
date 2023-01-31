import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_first_project/lab_7.dart';
import 'package:my_first_project/lab_8.dart';
import 'package:my_first_project/rowcolumnimage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int selectedindex = 0;
  List<Widget> widgetslist = [
    Lab_7(),
    Lab_8(),
    RowColumnImage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Lab_Project')),
        ),
        body: widgetslist[selectedindex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.android),
              label: 'Lab-7',
            ),
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.page4),
              label: 'Lab-8',
            ),
            BottomNavigationBarItem(
                icon: Icon(FontAwesomeIcons.images), label: 'Dynamic Parts'
            ),
          ],
          selectedItemColor: Colors.black,
          backgroundColor: Colors.blue,
          onTap: (index) {
            setState(
              () {
                selectedindex = index;
              },
            );
          },
        ),
      ),
    );
    // return SafeArea(
    //   child: Scaffold(
    //     appBar: AppBar(title: const Center(child: Text('Flutter Project')),),
    //     body: Column(
    //       crossAxisAlignment: CrossAxisAlignment.start,
    //       children: [
    //         Center(
    //           child: Column(
    //             children: [
    //               Padding(
    //                 padding: const EdgeInsets.all(10),
    //                 child: Card(
    //                   elevation: 5,
    //                   child: Container(
    //                     padding: const EdgeInsets.all(20),
    //                     child: InkWell(
    //                       onTap: () {
    //                         Navigator.of(context).push(
    //                           MaterialPageRoute(
    //                             builder: ((context) {
    //                               return Lab_7();
    //                             }),
    //                           ),
    //                         );
    //                       },
    //                       child: const Text(
    //                         "Lab 7",
    //                         style: TextStyle(
    //                             fontSize: 20,
    //                             fontWeight: FontWeight.w500,
    //                             color: Colors.blue),
    //                       ),
    //                     ),
    //                   ),
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         Center(
    //           child: Padding(
    //             padding: const EdgeInsets.all(10),
    //             child: Card(
    //               elevation: 5,
    //               child: Container(
    //                 padding: const EdgeInsets.all(20),
    //                 child: InkWell(
    //                   onTap: () {
    //                     Navigator.of(context).push(
    //                       MaterialPageRoute(
    //                         builder: ((context) {
    //                           return Lab_8();
    //                         }),
    //                       ),
    //                     );
    //                   },
    //                   child: const Text(
    //                     "Lab 8",
    //                     style: TextStyle(
    //                         fontSize: 20,
    //                         fontWeight: FontWeight.w500,
    //                         color: Colors.blue),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //         Center(
    //           child: Padding(
    //             padding: const EdgeInsets.all(10),
    //             child: Card(
    //               elevation: 5,
    //               child: Container(
    //                 padding: const EdgeInsets.all(15),
    //                 child: InkWell(
    //                   onTap: () {
    //                     Navigator.of(context).push(
    //                       MaterialPageRoute(
    //                         builder: ((context) {
    //                           return const RowColumnImage();
    //                         }),
    //                       ),
    //                     );
    //                   },
    //                   child: const Text(
    //                     "Row Column Parts With Image",
    //                     style: TextStyle(
    //                         fontSize: 20,
    //                         fontWeight: FontWeight.w500,
    //                         color: Colors.blue),
    //                   ),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
