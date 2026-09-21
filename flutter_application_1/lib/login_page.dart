import 'package:flutter/material.dart';
import 'component/custom_textfield.dart'; 
import 'component/custom_button.dart';
import 'component/custom_textview.dart';   
import 'calculator_page.dart'; 

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  
  String errorMessage = ""; 

  void _prosesLogin() {
    String username = txtUsername.text;
    String password = txtPassword.text;

    if (username == "admin" && password == "admin") {
      setState(() {
        errorMessage = ""; 
      });
      
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Berhasil masuk!"),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const CalculatorPage()),
      );
    } else {
      setState(() {
        errorMessage = "Username atau password salah!";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center( 
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch, 
                children: [
                  const Icon(
                    Icons.lock_person,
                    size: 80,
                    color: Colors.deepPurple,
                  ),
                  const SizedBox(height: 16),
                  
                  const Center(
                    child: CustomText(
                      text: "Welcome to Application",
                      fontSize: 24,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 20),

                  if (errorMessage.isNotEmpty)
                    Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Center(
                        child: CustomText(
                          text: errorMessage,
                          fontSize: 14,
                          color: Colors.red,
                        ),
                      ),
                    ),

                  CustomTextField(
                    txtController: txtUsername,
                    hint: "Input username",
                  ),
                  const SizedBox(height: 16),
                  
                  TextField(
                    controller: txtPassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Input password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                  
                  CustomButton(
                    text: "Login",
                    onPressed: _prosesLogin,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}