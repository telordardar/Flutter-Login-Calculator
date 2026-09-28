import 'package:flutter/material.dart';
import 'login_page.dart';
import 'component/custom_registration.dart';
import 'component/custom_button.dart';
import 'component/custom_textview.dart'; 

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();
  TextEditingController txtNoTelp = TextEditingController();

  void _prosesRegister() {
    String username = txtUsername.text;
    String password = txtPassword.text;
    String noTelp = txtNoTelp.text;

    if (username.isNotEmpty && password.isNotEmpty && noTelp.isNotEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Registrasi Berhasil! Silakan Login."),
          backgroundColor: Colors.green,
          duration: Duration(seconds: 2),
        ),
      );

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    } else {
      // Menggunakan SnackBar untuk error input kosong
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("Semua kolom harus diisi!"),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Registration Page"),
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
                  const SizedBox(height: 16),
                  
                  const Center(
                    child: CustomText(
                      text: "Create New Account",
                      fontSize: 24,
                      color: Colors.deepPurple,
                    ),
                  ),
                  const SizedBox(height: 40),

                  CustomRegistrationField(
                    controller: txtUsername,
                    hintText: "Input username",
                    icon: Icons.person,
                  ),
                  const SizedBox(height: 16),
                  
                  CustomRegistrationField(
                    controller: txtNoTelp,
                    hintText: "Input No. Telepon",
                    icon: Icons.phone,
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 16),

                  CustomRegistrationField(
                    controller: txtPassword,
                    hintText: "Input password",
                    icon: Icons.lock,
                    isPassword: true,
                  ),
                  const SizedBox(height: 24),
                  
                  CustomButton(
                    text: "Register",
                    onPressed: _prosesRegister,
                  ),
                  const SizedBox(height: 16),

                  // Tombol login menggunakan CustomButton
                  CustomButton(
                    text: "Kembali ke Login",
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => const LoginPage()),
                      );
                    },
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