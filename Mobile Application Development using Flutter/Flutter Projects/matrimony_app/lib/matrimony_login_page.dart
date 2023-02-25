import 'package:flutter/material.dart';
import 'package:matrimony_app/users_list_page.dart';

class UserLoginPage extends StatefulWidget {
  const UserLoginPage({Key? key, required this.isLogin, required this.userList})
      : super(key: key);

  final userList;

  final bool isLogin;

  @override
  State<UserLoginPage> createState() => _UserLoginPageState();
}

class _UserLoginPageState extends State<UserLoginPage> {
  // List<Map<String, dynamic>> userList = [];

  var _nameController = TextEditingController(),
      _emailController = TextEditingController(),
      _passwordController = TextEditingController(),
      _confirmPasswordController = TextEditingController();

  String? genderController;
  bool isRememberMe = false;

  var _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0x665ac18e),
                              Color(0x991ac18e),
                              Color(0xcc2ac18e),
                              Color(0xff7ac18e),
                            ]),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          widget.isLogin
                              ? Container(
                                  margin: const EdgeInsets.only(top: 100),
                                  child: Column(
                                    children: [
                                      buildCustomTextFormField(
                                          hintText: "Email Address",
                                          showText: false,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          icon: Icons.email,
                                          controller: _emailController,
                                          validationMSG:
                                              "Please, Enter the Email Address.",
                                          loginValidatioMSG:
                                              "Enter the proper username.",
                                          mapKey: "emailId"),
                                      buildCustomTextFormField(
                                          hintText: "Password",
                                          showText: true,
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          icon: Icons.lock,
                                          controller: _passwordController,
                                          validationMSG:
                                              "Please, enter the Password.",
                                          loginValidatioMSG:
                                              "Enter the proper password.",
                                          mapKey: "password"),
                                      buildRememberMe(),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: buildCustomButton(
                                                  btnName: "Login")),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              : Container(
                                  margin: const EdgeInsets.only(top: 100),
                                  child: Column(
                                    children: [
                                      buildCustomTextFormField(
                                          hintText: "Username",
                                          showText: false,
                                          keyboardType: TextInputType.name,
                                          icon: Icons.abc,
                                          controller: _nameController,
                                          validationMSG:
                                              "Please, Enter the Username."),
                                      buildCustomTextFormField(
                                          hintText: "Email Address",
                                          showText: false,
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          icon: Icons.email,
                                          controller: _emailController,
                                          validationMSG:
                                              "Please, Enter the Email Address."),
                                      buildCustomTextFormField(
                                          hintText: "Create a password",
                                          showText: true,
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          icon: Icons.lock,
                                          controller: _passwordController,
                                          validationMSG:
                                              "Please, Enter the Password.",
                                          mapKey: "password"),
                                      buildCustomTextFormField(
                                          hintText: "Confirm password",
                                          showText: true,
                                          keyboardType:
                                              TextInputType.visiblePassword,
                                          icon: Icons.lock_outline,
                                          controller:
                                              _confirmPasswordController,
                                          validationMSG:
                                              "Please, Enter the confirm password",
                                          mapKey: "confirmPass"),
                                      getGender(),
                                      buildRememberMe(),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: buildCustomButton(
                                                  btnName:
                                                      "Create an Account")),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCustomTextFormField(
      {hintText,
      showText,
      keyboardType,
      icon,
      controller,
      validationMSG,
      loginValidatioMSG,
      mapKey}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 0, 10, 5),
          margin: const EdgeInsets.all(10.0),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(4, 8),
                ),
              ]),
          child: TextFormField(
            controller: controller,
            keyboardType: keyboardType,
            validator: (value) {
              if (widget.isLogin) {
                if (value != null && value.isEmpty) {
                  return validationMSG;
                } else {
                  //   Map<String, dynamic> loginUser = {};
                  //   for (int i=0; i<widget.userList.length; i++) {
                  //     lengthCount++;
                  //     if (value!.toLowerCase() == widget.userList[i][mapKey].toString().toLowerCase()){
                  //       Map<String, dynamic> loginUser = widget.userList[i];
                  //       break;
                  //     }
                  //   }
                  //   if (mapKey == "emailId") {
                  //     if (lengthCount == widget.userList.length){
                  //       return "Incorrect username";
                  //     }
                  //     else if (value?.toLowerCase() != loginUser["emailId"].toString().toLowerCase()) {
                  //       return loginValidatioMSG;
                  //     }
                  //   }
                  //   else if (mapKey == "password") {
                  //     if (value!.toLowerCase() != loginUser["password"].toString().toLowerCase()) {
                  //       return loginValidatioMSG;
                  //     }
                  //   }
                  //
                }
              } else {
                if (value != null && value.isEmpty) {
                  return validationMSG;
                } else {
                  if (mapKey == 'password') {
                    if (value!.length < 8) {
                      return "Enter the more than 8 characters.";
                    }
                  } else if (mapKey == 'confirmPass') {
                    if (value!.toLowerCase() !=
                        _passwordController.text.toLowerCase()) {
                      return "Enter the correct password.";
                    }
                  }
                }
              }
            },
            obscureText: showText,
            style: const TextStyle(
              color: Colors.black87,
            ),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                icon,
                color: const Color(0xff5ac18e),
              ),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.black38,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getGender() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Expanded(
          child: Icon(
            Icons.supervised_user_circle_outlined,
            color: Colors.white,
            size: 30,
          ),
        ),
        Expanded(
          flex: 4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Radio(
                activeColor: Colors.white,
                value: "male",
                groupValue: genderController,
                onChanged: (value) {
                  setState(() {
                    genderController = value!;
                  });
                },
              ),
              const Text(
                "Male",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Radio(
                activeColor: Colors.white,
                value: "female",
                groupValue: genderController,
                onChanged: (value) {
                  setState(() {
                    genderController = value!;
                  });
                },
              ),
              const Text(
                "Female",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildCustomButton({
    btnName,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 25,
      ),
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          foregroundColor: const Color(0xff5ac18e),
          backgroundColor: Colors.white,
        ),
        onPressed: ({username, emailId, password, gender}) {
          if (widget.isLogin) {
            if (_formKey.currentState!.validate()) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return UsersListPage();
                  },
                ),
              );
            }
          } else {
            if (_formKey.currentState!.validate()) {
              Map<String, dynamic> user = {};
              user['username'] = _nameController.text;
              user['emailId'] = _emailController.text;
              user['password'] = _passwordController.text;
              user['gender'] = genderController;

              Navigator.of(context).pop(user);
            }
          }
        },
        child: Text(
          btnName,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }

  Widget buildRememberMe() {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 15,
      ),
      child: Row(
        children: [
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
          ),
          const Text(
            "Remember me",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
