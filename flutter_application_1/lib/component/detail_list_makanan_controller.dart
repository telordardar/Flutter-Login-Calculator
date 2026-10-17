import 'package:get/get.dart';
import 'package:flutter_application_1/models/makanan_models.dart';
class DetailListMakananController extends GetxController {
  late MakananModels makanan;

  @override
  void onInit() {
    super.onInit();
    makanan = Get.arguments as MakananModels;
  }
}