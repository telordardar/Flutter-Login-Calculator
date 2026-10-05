import 'package:flutter_application_1/pages/regist_page.dart';
import 'package:flutter_application_1/pages/confirm_registration.dart';
import 'package:get/get.dart';

class Routes {
  // list pages yang ada di aplikasi
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  // dll login , kalkulator

  // kita tampung kedalam array yang akan kita pasang ke main dart
  static final myPages = [
    GetPage(name: registration, page: () => RegistrationPage()),
    GetPage(name: confirmRegistration, page: () => ConfirmRegistrationPage()),
    // others page here dll
  ];
}