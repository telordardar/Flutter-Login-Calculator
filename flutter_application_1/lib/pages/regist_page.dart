import 'package:flutter_application_1/component/custom_textfield.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({super.key});

 @override
  Widget build(BuildContext context) {
    TextEditingController txtNama = TextEditingController();
    TextEditingController txtEmail = TextEditingController();
    TextEditingController txtJenisKelamin = TextEditingController();
    TextEditingController txtTelepon = TextEditingController();
    TextEditingController txtAlamat = TextEditingController();
    TextEditingController txtagama = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Registration")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(hint: "Input nama", txtController: txtNama),
            SizedBox(height: 10),
            CustomTextField(hint: "Input email", txtController: txtEmail),
            SizedBox(height: 10),
            CustomTextField(hint: "Input jenis kelamin", txtController: txtJenisKelamin),
            SizedBox(height: 10),
            CustomTextField(hint: "Input nomor telepon", txtController: txtTelepon),
            SizedBox(height: 10),
            CustomTextField(hint: "Input alamat", txtController: txtAlamat),
            SizedBox(height: 10),
            CustomTextField(hint: "Input agama", txtController: txtagama),
            SizedBox(height: 10),

            
            ElevatedButton(
              onPressed: () {
                Get.toNamed(
                  Routes.confirmRegistration,
                  arguments: {
                    'name': txtNama.text,
                    'email': txtEmail.text,
                    'jenis_kelamin': txtJenisKelamin.text,
                    'telepon': txtTelepon.text,
                    'alamat': txtAlamat.text,
                    'agama': txtagama.text,
                  },
                );
              },
              child: Text("Send"),
            ),
          ],
        ),
      ),
    );
  }
}