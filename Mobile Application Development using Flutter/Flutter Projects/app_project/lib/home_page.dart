import 'package:app_project/birthdaycard_page.dart';
import 'package:app_project/dice_page.dart';
import 'package:app_project/matrimony.dart';
import 'package:app_project/simpleInterestCalculator.dart';
import 'package:app_project/game_page.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(
//           child: Text('Home Project'),
//         ),
//       ),
//       body: Column(
//         children: [
//           Center(
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(10),
//                   child: Card(
//                     elevation: 5,
//                     child: Container(
//                       padding: const EdgeInsets.all(20),
//                       child: InkWell(
//                         onTap: () {
//                           Navigator.of(context).push(
//                             MaterialPageRoute(
//                               builder: ((context) {
//                                 return const Matrimony();
//                               }),
//                             ),
//                           );
//                         },
//                         child: const Text(
//                           "Matrimony App",
//                           style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.blue),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
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
//                           return const SimpleInterestCalculator();
//                         }),
//                       ),
//                     );
//                   },
//                   child: const Text(
//                     "Simple Interest Calculator",
//                     style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.blue),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
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
//                           return const DicePage();
//                         }),
//                       ),
//                     );
//                   },
//                   child: const Text(
//                     "Dice Image Change",
//                     style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.blue),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
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
//                           return const GamePage();
//                         }),
//                       ),
//                     );
//                   },
//                   child: const Text(
//                     "Game",
//                     style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.blue),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//           Padding(
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
//                           return const BirthdatCard();
//                         }),
//                       ),
//                     );
//                   },
//                   child: const Text(
//                     "Birthday Card",
//                     style: TextStyle(
//                         fontSize: 22,
//                         fontWeight: FontWeight.w500,
//                         color: Colors.blue),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(FontAwesomeIcons.calculator),),
                Tab(icon: Icon(FontAwesomeIcons.cakeCandles)),
                Tab(icon: Icon(FontAwesomeIcons.heartCrack)),
                Tab(icon: Icon(FontAwesomeIcons.dice),),
                Tab(icon: Icon(FontAwesomeIcons.gamepad),)
              ],
            ),
            title: const Text('All Projects'),
          ),
          body: const TabBarView(
            children: [
              SimpleInterestCalculator(),
              BirthdatCard(),
              Matrimony(),
              DicePage(),
              GamePage(),
            ],
          ),
        ),
      ),
    );
  }
}
