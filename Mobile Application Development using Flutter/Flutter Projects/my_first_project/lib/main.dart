import 'package:flutter/material.dart';
import 'package:my_first_project/lab_7.dart';
import 'package:my_first_project/lab_8.dart';
import 'package:my_first_project/rowcolumnimage.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  // const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    home: Demo(),
  );
  }
}
// import 'package:flutter/material.dart';
// import 'package:my_first_project/lab_8.dart';
//
// void main() {
//   runApp(const MaterialApp(
//     title: 'Navigation Basics',
//     home: FirstRoute(),
//   ));
// }
//
// class FirstRoute extends StatelessWidget {
//   const FirstRoute({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('First Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: const Text('Open route'),
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(builder: (context) => Lab_8()),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
//
// class SecondRoute extends StatelessWidget {
//   const SecondRoute({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Second Route'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           child: const Text('Go back!'),
//         ),
//       ),
//     );
//   }
// }