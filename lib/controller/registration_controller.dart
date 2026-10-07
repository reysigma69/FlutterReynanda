import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegistrationController extends GetxController {
  final txtNama = TextEditingController();
  final txtAlamat = TextEditingController();
  final txtTelepon = TextEditingController();
  final txtEmail = TextEditingController();

  var selectedGender = ''.obs;

  @override
  void onClose() {
    txtNama.dispose();
    txtAlamat.dispose();
    txtTelepon.dispose();
    txtEmail.dispose();
    super.onClose();
  }
}