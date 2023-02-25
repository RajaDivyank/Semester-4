import 'package:flutter/material.dart';
import 'package:matrimony_app/matrimony_login_page.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}
List<Map<String, dynamic>> userList = [];
class _UserHomePageState extends State<UserHomePage> {

  bool isLogin = true;

  @override
  void initState() {
    super.initState();
    Map<String, dynamic> user = {};

    user['username'] = "Uttam Nagvadiya";
    user['emailId'] = "uttam123@gmail.com";
    user['password'] = "Uttam@123";
    user['gender'] = "male";
    userList.add(user);

    user = {};
    user['username'] = "Kishan Moliya";
    user['emailId'] = "kishan456@gmail.com";
    user['password'] = "Kishan@456";
    user['gender'] = "male";
    userList.add(user);

    user = {};
    user['username'] = "Karan Khunt";
    user['emailId'] = "karan789@gmail.com";
    user['password'] = "Karan@789";
    user['gender'] = "male";
    userList.add(user);

    user = {};
    user['username'] = "Devanshu Shah";
    user['emailId'] = "devanshu111@gmail.com";
    user['password'] = "Devanshu@111";
    user['gender'] = "male";
    userList.add(user);

    user = {};
    user['username'] = "Divyank Raja";
    user['emailId'] = "divyank999@gmail.com";
    user['password'] = "Divyank@999";
    user['gender'] = "male";
    userList.add(user);
  }

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(
              "Bharat Matrimony",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    "assets/images/home_page_img.jpg",
                    fit: BoxFit.fill,
                  ),
                  Container(
                    color: Colors.black26,
                    alignment: Alignment.bottomCenter,
                    // margin: const EdgeInsets.only(bottom: 60.0),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 50.0),
                      child: Text(
                        "India\'s\nMost Trusted\nMatrimony Brand ",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 25,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                getCustomButton(bgColor: Colors.black, txtColor: Colors.green, btnName: "Login", login: true, navigateRoute: UserLoginPage(isLogin: isLogin, userList: userList),),
                getCustomButton(bgColor: Colors.green, txtColor: Colors.black, btnName: "Sign Up", login: false, navigateRoute: UserLoginPage(isLogin: !isLogin, userList: null),),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget getCustomButton ({bgColor, txtColor, btnName, login, navigateRoute}) {
    return Expanded(
      child: Container(
        color: bgColor,
        child: TextButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) {
                  return navigateRoute;
                },
              ),
            ).then((value) {
              setState(() {
                userList.add(value);
                print(userList);
              });
            });
          },
          child: Text(btnName,
            style: TextStyle(
                color: txtColor,
                fontSize: 17,
                fontWeight: FontWeight.w700
            ),
          ),
        ),
      ),
    );
  }
}
