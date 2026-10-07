import 'package:flutter/material.dart';
import 'package:my_first_flutter_project/components/my_TextField.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String StatusLogin = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MyLogin Page")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: MyTextfield(
              txtController: txtUsername,
              myHint: "Input Username", radius: 10,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: MyTextfield(
              txtController: txtPassword,
              myHint: "Input Password", radius: 10,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text(
                "Login", 
                  style: TextStyle(
                    fontSize: 45, 
                    color: const Color.fromARGB(255, 0, 107, 201),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Register")),
            ],
          ),
        ],
      ), 
    );
  }
}