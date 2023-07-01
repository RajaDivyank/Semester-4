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
          FutureBuilder<List<CityModel>>(
            future: isCityListGet ? MyDatabase().getCityList() : null,
            builder: (context, snapshot) {
              if (snapshot.data != null && snapshot.hasData) {
                if (isCityListGet) {
                  if (widget.data == null) {
                    __ddSelected = snapshot.data![0];
                  } else {
                    __ddSelected =
                        getEditCity(snapshot.data!, widget.data["CityId"]);
                  }
                  isCityListGet = false;
                }
                return DropdownButton(
                    value: __ddSelected,
                    items: snapshot.data!.map(
                          (CityModel e) {
                        return DropdownMenuItem(
                          value: e,
                          child: Text(e.CityName.toString()),);
                      },
                    ).toList(),
                    onChanged: (value) {
                      setState(() {
                        __ddSelected = value as CityModel;
                      });
                    },);
              } else {
                return Container(
                  color: Colors.red,
                  height: 50,
                  width: 50,
                );
              }
            },),
          TextButton(
              onPressed: () {
                Map<String, Object?> map = {};
                map["EmployeeName"] = _nc.text;
                map["CityId"] = __ddSelected.CityId!;
                if (widget.data != null) {
                  map["id"] = widget.data!["id"];
                  MyDatabase().editById(map, map["id"]);
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
      if (abc[i].CityId == usersCityID) {
        return abc[i];
      }
    }
    return abc[0];
  }
}