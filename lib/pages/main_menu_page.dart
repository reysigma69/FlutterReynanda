import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/controller/main_menu_controller.dart';
// Pastikan import MenuDrawer sesuai lokasi filemu
import 'package:my_first_flutter_project/pages/menu_drawer.dart'; 

class MainMenuPage extends StatelessWidget {
  MainMenuPage({super.key});

  final menuController = Get.put(MainMenuController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
      appBar: AppBar(
        title: const Text(
          "ReynandaStuffStore",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 10, 169, 4),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      // Pasang MenuDrawer di sini
      drawer: MenuDrawer(), 
      body: IndexedStack(
        index: menuController.selectedIndex.value,
        children: menuController.listPages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: menuController.selectedIndex.value,
        onTap: menuController.changePage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history), 
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person), 
            label: "Profile",
          ),
        ],
      ),
    ));
  }
}