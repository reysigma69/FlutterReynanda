import 'dart:convert';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_first_flutter_project/routes.dart';

class LoginCloneController extends GetxController {
  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  var isLoading = false.obs;

  Future<void> login() async {
    if (txtUsername.text.isEmpty || txtPassword.text.isEmpty) {
      Get.snackbar(
        "Error", 
        "Username dan password harus terisi",
        backgroundColor: Colors.redAccent,
        colorText: Colors.white,
      );
    } else {
      try {
        isLoading.value = true;
        final url = Uri.parse("https://mediadwi.com/api/latihan/login");

        final response = await http.post(url, body: {
          "username": txtUsername.text,
          "password": txtPassword.text
        });

        isLoading.value = false;

        if (response.statusCode == 200) {
          final data = jsonDecode(response.body);
          
          if (data['status'] == true) {
            Get.offAllNamed(Routes.mainmenupage);
            Get.snackbar(
              "Berhasil", 
              data['message'],
              backgroundColor: Colors.green,
              colorText: Colors.white,
            );
          } else {
            Get.snackbar("Login Gagal", data['message']);
          }
        } else {
          Get.snackbar("Gagal", "Terjadi masalah pada server. Status: ${response.statusCode}");
        }
      } catch (e) {
        isLoading.value = false;
        Get.snackbar("Gagal", "Cek koneksi internet: $e");
      }
    }
  }

  @override
  void onClose() {
    txtUsername.dispose();
    txtPassword.dispose();
    super.onClose();
  }
}