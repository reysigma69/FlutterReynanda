import 'package:my_first_flutter_project/controller/confirm_registration_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfirmRegistrationPage extends StatelessWidget {
  const ConfirmRegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ConfirmRegistrationController());
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 133, 195, 246),
        title: const Text(
          "Confirm Registration",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Obx(() => Text("Nama: ${controller.nama}", style: const TextStyle(fontSize: 18))),
            const SizedBox(height: 8),
            Obx(() => Text("Alamat: ${controller.alamat}", style: const TextStyle(fontSize: 18))),
            const SizedBox(height: 8),
            Obx(() => Text("Gender: ${controller.gender}", style: const TextStyle(fontSize: 18))),
            const SizedBox(height: 8),
            Obx(() => Text("Telepon: ${controller.telepon}", style: const TextStyle(fontSize: 18))),
            const SizedBox(height: 8),
            Obx(() => Text("Email: ${controller.email}", style: const TextStyle(fontSize: 18))),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Tombol warna ijo
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  Get.back();
                },
                child: const Text("OK"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}