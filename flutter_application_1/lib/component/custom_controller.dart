import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var hasilhitung = 0.0.obs;

  void tambah(double a, double b) {
    hasilhitung.value = a + b;
    Get.snackbar("Info", "Hasil Penjumlahan: " + hasilhitung.value.toString());
  }

  void kurang(double a, double b) {
    hasilhitung.value = a - b;
    Get.snackbar("Info", "Hasil Pengurangan: " + hasilhitung.value.toString());
  }

  void kali(double a, double b) {
    hasilhitung.value = a * b;
    Get.snackbar("Info", "Hasil Perkalian: " + hasilhitung.value.toString());
  }

  void bagi(double a, double b) {
    hasilhitung.value = a / b;
    Get.snackbar("Info", "Hasil Pembagian: " + hasilhitung.value.toString());
  }
}