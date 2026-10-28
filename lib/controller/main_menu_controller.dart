import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/menu/history_page.dart';
import 'package:my_first_flutter_project/menu/home_page.dart';
import 'package:my_first_flutter_project/menu/profile_page.dart';

class MainMenuController extends GetxController{
  final RxInt selectedIndex = 0.obs;
  

  void changePage(int index) {
    selectedIndex.value = index;
  }

    List<Widget> listPages = [HomePage(), HistoryPage(), ProfilePage()];

}