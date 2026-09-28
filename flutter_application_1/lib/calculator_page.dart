import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/custom_textfield.dart';
import 'package:flutter_application_1/component/custom_button.dart';
import 'package:flutter_application_1/component/custom_controller.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  CalculatorPage({super.key});

  final controller = Get.put(KalkulatorController());
  
  final TextEditingController txtAngka1 = TextEditingController();
  final TextEditingController txtAngka2 = TextEditingController();

  void _prosesHitung(String jenisOperasi) {
    String teksAngka1 = txtAngka1.text.trim();
    String teksAngka2 = txtAngka2.text.trim();

    if (teksAngka1.isEmpty || teksAngka2.isEmpty) {
      Get.snackbar(
        "Peringatan", 
        "Angka 1 dan Angka 2 tidak boleh kosong!",
        backgroundColor: Colors.orange,
        colorText: Colors.white,
      );
      return;
    }

    double? angka1 = double.tryParse(teksAngka1);
    double? angka2 = double.tryParse(teksAngka2);

    if (angka1 == null || angka2 == null) {
      Get.snackbar(
        "Peringatan", 
        "Input harus berupa angka (Numeric Only)!",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
      return;
    }

    if (jenisOperasi == 'bagi' && angka2 == 0) {
      Get.snackbar(
        "Error", 
        "Angka 2 tidak boleh 0 untuk operasi pembagian!",
        backgroundColor: Colors.red,
        colorText: Colors.white,
      );
      return;
    }

    if (jenisOperasi == 'tambah') controller.tambah(angka1, angka2);
    if (jenisOperasi == 'kurang') controller.kurang(angka1, angka2);
    if (jenisOperasi == 'kali') controller.kali(angka1, angka2);
    if (jenisOperasi == 'bagi') controller.bagi(angka1, angka2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kalkulator"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              txtController: txtAngka1, 
              hint: "Input angka 1",
              isNumeric: true, // Mengaktifkan mode angka
            ),
            const SizedBox(height: 16),
            CustomTextField(
              txtController: txtAngka2, 
              hint: "Input angka 2",
              isNumeric: true, // Mengaktifkan mode angka
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: "Tambah",
                    onPressed: () => _prosesHitung('tambah'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: CustomButton(
                    text: "Kurang",
                    onPressed: () => _prosesHitung('kurang'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                Expanded(
                  child: CustomButton(
                    text: "Kali",
                    onPressed: () => _prosesHitung('kali'),
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: CustomButton(
                    text: "Bagi",
                    onPressed: () => _prosesHitung('bagi'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Text(
              "Hasil:", 
              style: TextStyle(fontSize: 18),
            ),
            Obx(
              () => Text(
                controller.hasilhitung.value.toString(),
                style: const TextStyle(
                  fontSize: 40, 
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}