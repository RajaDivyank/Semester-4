//region Imports Statements
import 'package:flutter/material.dart';
import 'package:matrimony_app/Model/user_model.dart';
//endregion

class UserDetailsPage extends StatefulWidget{
  UserDetailsPage({super.key, required this.detailsMap,});
  UserModel detailsMap;
  @override
  State<UserDetailsPage> createState() => _UserDetailsPageState();
}

class _UserDetailsPageState extends State<UserDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0x42424040),

        //region App Bar
        appBar: AppBar(
          backgroundColor: Color(0x42424040),
          title: Text("User Profile"),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return Container();
                      // return NewUser(model: widget.detailsMap);
                    },
                  ),
                ).then((value) {
                  print( (value as UserModel).Age);
                  setState(() {
                    widget.detailsMap = value;
                  });
                });
              },
              icon: const Icon(
                Icons.edit,
              ),
            ),
          ],
        ),
        //endregion

        //region Body
        body: Column(
          children:  [

            //region User Image
            Container(
              margin: EdgeInsets.all(25),
              child: const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/doraemon.png"),
                  radius: 70,
                ),
              ),
            ),
            //endregion

            //region User Details
            Expanded(
              child:Card(
                color: Color(0xDD696868),
                margin: EdgeInsets.all(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          textBox(label: "Name  :  ", info: widget.detailsMap.Username),
                          textBox(label: "City  :  ", info: widget.detailsMap.City),
                          textBox(label: "Age  :  ", info: widget.detailsMap.Age.toString()),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            //endregion
          ],
        ),
        //endregion
      ),
    );
  }

  //region Custom Text Box
  Widget textBox ({label, info}) {
    return Text(label +  info,
      style: TextStyle(
          fontSize: 22,
          color: Colors.white
      ),
      textAlign: TextAlign.start,
    );
  }
//endregion
}