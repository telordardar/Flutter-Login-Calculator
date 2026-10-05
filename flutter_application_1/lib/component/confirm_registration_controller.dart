import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  late String nama;
  late String email;
  late String jenisKelamin;
  late String telepon;
  late String alamat;
  late String agama;

  @override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    
    nama = arguments['name'] ?? '-';
    email = arguments['email'] ?? '-';
    jenisKelamin = arguments['jenis_kelamin'] ?? '-';
    telepon = arguments['telepon'] ?? '-';
    alamat = arguments['alamat'] ?? '-';
    agama = arguments['agama'] ?? '-';
  }
}