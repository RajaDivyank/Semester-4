import 'package:flutter/material.dart';

class SimpleInterestCalculator extends StatefulWidget {
  const SimpleInterestCalculator({Key? key}) : super(key: key);

  @override
  State<SimpleInterestCalculator> createState() =>
      _SimpleInterestCalculatorState();
}

class _SimpleInterestCalculatorState extends State<SimpleInterestCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Simple Interest Calculator"),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(15, 15, 15, 10),
        child: Column(
          children: [
            getRow(
              'Principal Amount',
              'Amount',
              Icons.access_alarm,
              const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30,),
            ),
            getRow(
              'Rate of Interest',
              'percentage',
                Icons.access_alarm,
              const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            getRow(
              'Time Period',
              'Time',
                Icons.access_alarm,
              const TextStyle(color: Colors.black, fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }

  Widget getRow(title, hint,suffixicon,suffixstyle) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(title),
        ),
        Expanded(
          flex: 1,
          child: TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.yellow),
              ),
              hintText: hint,
              suffixIcon: Icon(suffixicon),
              suffixStyle: suffixstyle,
            ),
          ),
        ),
      ],
    );
  }
}
