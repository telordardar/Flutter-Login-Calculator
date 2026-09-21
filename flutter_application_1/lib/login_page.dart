import 'package:flutter/material.dart';
import 'component/custom_textfield.dart'; 
import 'component/custom_button.dart';   

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  String statusLogin = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login Page")),
      body: Column(
        children: [
          Text(
            "Welcome to Application $statusLogin",
            style: const TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 62, 4, 223),
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: CustomTextField(
              txtController: txtUsername,
              hint: "input username",
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: TextField(
              controller: txtPassword,
              decoration: const InputDecoration(
                hintText: "Input password",
              ),
              obscureText: true,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(
                text: "Login",
                onPressed: () {
                  setState(() {
                    String username = txtUsername.text;
                    String password = txtPassword.text;
                    if (username == "admin" && password == "admin") {
                      print("sukses login");
                      statusLogin = "admin";
                    } else {
                      print("gagal login");
                      statusLogin = "failed";
                    }
                  });
                },
              ),
              
              const SizedBox(width: 10),
              
              CustomButton(
                text: "Register",
                onPressed: () {
                  print("Tombol register ditekan");
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}