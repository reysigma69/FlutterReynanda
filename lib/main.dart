import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:my_first_flutter_project/kalkulator_page.dart';
import 'package:my_first_flutter_project/pages/kalkulator_page_new.dart';
import 'package:my_first_flutter_project/routes.dart';
//import 'package:my_first_flutter_project/pages/login_clone_fix.dart';
// import 'package:my_first_flutter_project/kalkulator_page.dart';
// import 'package:my_first_flutter_project/login_page.dart';
// import 'package:my_first_flutter_project/login_clone.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Belajar Flutter PPLG3",
      initialRoute: Routes.listProduk,
      getPages: Routes.myPages,

    );
  }
}
