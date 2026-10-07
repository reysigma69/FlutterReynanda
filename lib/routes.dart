import 'package:get/get.dart';
import 'package:my_first_flutter_project/pages/confirm_registration_page.dart';
import 'package:my_first_flutter_project/pages/list_produk_page.dart';
import 'package:my_first_flutter_project/pages/registration_page.dart';

class Routes {

  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduk = "/listProduk";
  //login,kalkulator dll

  //kita tampung kedalem array yg bakal dipasang ke main dart
static final myPages = [
  GetPage(name: registration, page: ()=> RegistrationPage()),
  GetPage(name: confirmRegistration, page: ()=> ConfirmRegistrationPage()),
  GetPage(name: listProduk, page: () => ListProdukPage()),

];


}