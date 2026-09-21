import 'package:flutter/material.dart';
import 'component/custom_textfield.dart';
import 'component/custom_button.dart';
import 'login_page.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final TextEditingController _angka1Controller = TextEditingController();
  final TextEditingController _angka2Controller = TextEditingController();

  double _hasil = 0;

  void _hitung(String operasi) {
    double angka1 = double.tryParse(_angka1Controller.text) ?? 0;
    double angka2 = double.tryParse(_angka2Controller.text) ?? 0;

    setState(() {
      if (operasi == '+') {
        _hasil = angka1 + angka2;
      } else if (operasi == '-') {
        _hasil = angka1 - angka2;
      } else if (operasi == '*') {
        _hasil = angka1 * angka2;
      } else if (operasi == '/') {
        _hasil = angka2 != 0 ? angka1 / angka2 : 0; 
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kalkulator Sederhana'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // (Opsional) Anda juga bisa menambahkan tombol kembali di sudut kiri atas AppBar:
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              txtController: _angka1Controller,
              hint: 'Angka Pertama',
            ),
            const SizedBox(height: 16),
            
            CustomTextField(
              txtController: _angka2Controller,
              hint: 'Angka Kedua',
            ),
            const SizedBox(height: 24),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(text: '+', onPressed: () => _hitung('+')),
                CustomButton(text: '-', onPressed: () => _hitung('-')),
                CustomButton(text: 'x', onPressed: () => _hitung('*')),
                CustomButton(text: '/', onPressed: () => _hitung('/')),
              ],
            ),
            const SizedBox(height: 32),
            
            const Text(
              'Hasil:',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              _hasil.toString(),
              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            
            const Spacer(), // Mendorong tombol kembali ke bagian paling bawah layar
            
            // Tombol Kembali di bagian bawah
            SizedBox(
              width: double.infinity, // Membuat tombol melebar penuh
              child: CustomButton(
                text: 'Kembali ke Login',
                onPressed: () {
                  // Fungsi untuk kembali ke halaman login
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}