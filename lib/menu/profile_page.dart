import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/controller/menu_drawer_controller.dart';
import 'package:my_first_flutter_project/pages/menu_drawer.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final controller = Get.put(MenuDrawerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      drawer: MenuDrawer(), 
      
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 10, 169, 4),
        foregroundColor: Colors.white,
        title: const Text('My Profile', style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.topCenter,
            children: [
              Container(
                height: 120,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 10, 169, 4),
                  borderRadius: const BorderRadius.vertical(
                    bottom: Radius.circular(40),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 15,
                      spreadRadius: 2,
                      offset: const Offset(0, 5),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(height: 25),
                  Container(
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 12,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: const CircleAvatar(
                      radius: 65,
                      backgroundColor: Color.fromARGB(255, 230, 230, 230),
                      backgroundImage: AssetImage('assets/images/rey.jpg'), 
                    ),
                  ),
                  Container(height: 12),
                  const Text(
                    "Reynanda Sarva P.F",
                    style: TextStyle(
                      fontSize: 22, 
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Container(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildStatColumn("1.2K", "Followers"),
                      Container(width: 40),
                      _buildStatColumn("150", "Following"),
                    ],
                  ),
                ],
              ),
            ],
          ),
          
          Container(height: 25),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      blurRadius: 15,
                      spreadRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _buildInfoRow(Icons.person_outline, "Username", "reynandaspf"),
                      const Divider(height: 20),
                      _buildInfoRow(Icons.email_outlined, "Email", "reynanda@stuffstore.com"),
                      const Divider(height: 20),
                      _buildInfoRow(Icons.phone_outlined, "No Telepon", "+62 812-3456-7890"),
                      const Divider(height: 20),
                      _buildInfoRow(Icons.camera_alt_outlined, "Instagram", "@reynandastuff"),
                      const Divider(height: 20),
                      _buildInfoRow(Icons.code, "GitHub", "github.com/reynanda"),
                    ],
                  ),
                ),
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: double.infinity,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 10, 169, 4).withOpacity(0.4),
                    blurRadius: 12,
                    spreadRadius: 1,
                    offset: const Offset(0, 6),
                  )
                ]
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 10, 169, 4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 0,
                ),
                onPressed: controller.logoutAction, 
                child: const Text(
                  "Logout", 
                  style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String label, String value) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 235, 250, 235),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: const Color.fromARGB(255, 10, 169, 4), size: 24),
        ),
        Container(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
              Container(height: 4),
              Text(
                value,
                style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: Colors.black87),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildStatColumn(String number, String label) {
    return Column(
      children: [
        Text(
          number,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        Container(height: 4),
        Text(
          label,
          style: const TextStyle(fontSize: 13, color: Colors.grey),
        ),
      ],
    );
  }
}