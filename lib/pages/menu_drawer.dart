import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/controller/menu_drawer_controller.dart';

class MenuDrawer extends StatelessWidget {
  MenuDrawer({super.key});

  final controller = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 10, 169, 4),
            ),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const CircleAvatar(
                    radius: 32,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.store, size: 35, color: Colors.green),
                  ),
                  Container(height: 10),
                  const Text(
                    'ReynandaStuffStore',
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 20, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ),
          ),
          
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                ListTile(
                  leading: const Icon(Icons.home_filled),
                  title: const Text('Home'),
                  onTap: () => controller.goToPage(0),
                ),
                ListTile(
                  leading: const Icon(Icons.history),
                  title: const Text('History'),
                  onTap: () => controller.goToPage(1),
                ),
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text('Profile'),
                  onTap: () => controller.goToPage(2),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}