import 'package:database_evaluation/add_edit_page.dart';
import 'package:database_evaluation/my_database.dart';
import 'package:flutter/material.dart';

class EmployeePage extends StatefulWidget {
  const EmployeePage({Key? key}) : super(key: key);

  @override
  State<EmployeePage> createState() => _EmployeePageState();
}

class _EmployeePageState extends State<EmployeePage> {
  @override
  void initState() {
    super.initState();
    MyDatabase().copyPasteAssetFileToRoot().then((value) {
      print("Data");
    });
    MyDatabase().getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Database'),
            InkWell(
              child: const Icon(Icons.add),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return AddEditPage(data: null);
                  },
                ));
              },
            )
          ],
        ),
      ),
      body: FutureBuilder(
        future: MyDatabase().getData(),
        builder: (context, snapshot) {
          if (snapshot.data != null && snapshot.hasData) {
            return ListView(
              children: getTiles(list: snapshot.data),
            );
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }

  List<Widget> getTiles({list}) {
    List<Widget> lst = [];
    for (int i = 0; i < list.length; i++) {
      lst.add(
        Card(
          child: ListTile(
            title: Text(list[i]["EmployeeName"]),
            trailing: Container(
              width: 50,
              child: Row(
                children: [
                  InkWell(
                    child: Icon(Icons.edit),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AddEditPage(data: list[i])));
                    },
                  ),
                  InkWell(
                    child: const Icon(Icons.delete),
                    onTap: () {
                      MyDatabase().deleteById(list[i]["EmployeeID"]);
                      setState(() {});
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      );
    }
    return lst;
  }
}
