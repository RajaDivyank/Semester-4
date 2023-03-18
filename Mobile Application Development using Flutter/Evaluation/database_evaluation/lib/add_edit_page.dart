import 'package:database_evaluation/city_model.dart';
import 'package:database_evaluation/employee_page.dart';
import 'package:database_evaluation/my_database.dart';
import 'package:flutter/material.dart';

class AddEditPage extends StatefulWidget {
  AddEditPage({Key? key, this.data}) : super(key: key);
  dynamic data;

  @override
  State<AddEditPage> createState() => _AddEditPageState();
}

class _AddEditPageState extends State<AddEditPage> {
  TextEditingController _nc = TextEditingController();
  late CityModel __ddSelected;
  bool isCityListGet = true;

  @override
  void initState() {
    super.initState();
    if (widget.data != null) {
      _nc.text = widget.data!['EmployeeName'].toString();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AddEditPage'),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: _nc,
            decoration: const InputDecoration(labelText: 'Name'),
          ),
          // FutureBuilder<List<CityModel>>(builder: (context, snapshot) {
          //   if (snapshot.data != null && snapshot.hasData) {
          //     if (isCityListGet) {
          //       if (widget.data == null) {
          //         __ddSelected = snapshot.data![0];
          //       } else {
          //         __ddSelected =
          //             getEditCity(snapshot.data!, widget.data["CityID"]);
          //       }
          //       isCityListGet = false;
          //     }
          //     return DropdownButton(
          //       value: __ddSelected,
          //       items: snapshot.data!.map(
          //               (CityModel e) {
          //                   return DropdownMenuItem(child: Text());
          //       }),
          //     )
          //   }
          // },
          //   future: isCityListGet ? MyDatabase().getCityList() : null,),
          TextButton(
              onPressed: () {
                Map<String, Object?> map = {};
                map["EmployeeName"] = _nc.text;
                if (widget.data != null) {
                  map["EmployeeID"] = widget.data!["EmployeeID"];
                  MyDatabase().deleteById(
                      int.parse(map["EmployeeID"].toString()));
                  MyDatabase().add(map: map);
                } else {
                  MyDatabase().add(map: map);
                }
                Navigator.of(context)
                  ..pop()
                  ..pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => const EmployeePage()));
              },
              child: const Text("Submit"))
        ],
      ),
    );
  }

  CityModel getEditCity(List<CityModel> abc, usersCityID) {
    for (int i = 0; i < abc.length; i++) {
      if (abc[i].cityId == usersCityID) {
        return abc[i];
      }
    }
    return abc[0];
  }
}