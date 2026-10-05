import 'package:flutter_application_1/component/confirm_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());

    return Scaffold(
      appBar: AppBar(title: Text("Confirm Registration")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama: ${controller.nama}", style: TextStyle(fontSize: 18, color: Colors.green)),
            SizedBox(height: 10),
            Text("Email: ${controller.email}", style: TextStyle(fontSize: 20, color: Colors.green),),
            SizedBox(height: 10),
            Text("Jenis Kelamin: ${controller.jenisKelamin}",   style: TextStyle(fontSize: 18, color: Colors.green)),
            SizedBox(height: 10),
            Text("Nomor Telepon: ${controller.telepon}", style: TextStyle(fontSize: 18, color: Colors.green)),
            SizedBox(height: 10),
            Text("Alamat: ${controller.alamat}", style: TextStyle(fontSize: 18, color: Colors.green)),
            SizedBox(height: 10),
            Text("Agama: ${controller.agama}", style: TextStyle(fontSize: 18, color: Colors.green)),
            SizedBox(height: 10),

            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: Text("Oke"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}