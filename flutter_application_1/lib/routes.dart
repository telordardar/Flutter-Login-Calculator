import 'package:flutter_application_1/pages/regist_page.dart';
import 'package:flutter_application_1/pages/confirm_registration.dart';
import 'package:flutter_application_1/models/list_makanan_page.dart';
import 'package:flutter_application_1/models/detail_list_makan.dart';
import 'package:get/get.dart';

class Routes {
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listMakanan = "/listMakanan";
  static const String detailMakanan = "/detailMakanan";

  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    GetPage(name: listMakanan, page: () => ListMakananPage()),
    GetPage(name: detailMakanan, page: () => DetailListMakananPage()),
  ];
}