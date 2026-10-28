import 'package:get/get.dart';
import 'package:my_first_flutter_project/pages/confirm_registration_page.dart';
import 'package:my_first_flutter_project/pages/kalkulator_page_new.dart';
import 'package:my_first_flutter_project/pages/list_produk_page.dart';
import 'package:my_first_flutter_project/pages/main_menu_page.dart';
import 'package:my_first_flutter_project/pages/registration_page.dart';
import 'package:my_first_flutter_project/pages/list_detail_produk.dart';
import 'package:my_first_flutter_project/pages/menu_drawer.dart';

class Routes {

  static const String kalkulator = "/kalkulator";
  static const String registration = "/registration";
  static const String confirmRegistration = "/confirmRegistration";
  static const String listProduk = "/listProduk";
  static const String detailProduk = "/detailProduk";
  static const String mainmenupage = "/mainmenupage";
  static const String menuDrawer= "/menuDrawer";
  //login,kalkulator dll

  //kita tampung kedalem array yg bakal dipasang ke main dart
static final myPages = [
  GetPage(name: registration, page: ()=> RegistrationPage()),
  GetPage(name: confirmRegistration, page: ()=> ConfirmRegistrationPage()),
  GetPage(name: listProduk, page: () => ListProdukPage()),
  GetPage(name: detailProduk, page: () => ListDetailProduk()),
  GetPage(name: kalkulator, page: () => KalkulatorPageNew()),
  GetPage(name: mainmenupage, page: () => MainMenuPage()),
  GetPage(name: menuDrawer, page: () => MenuDrawer()),

];
}