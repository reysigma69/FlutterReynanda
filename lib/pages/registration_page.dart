import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/components/my_TextField.dart';
import 'package:my_first_flutter_project/routes.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final TextEditingController txtNama = TextEditingController();
  final TextEditingController txtAlamat = TextEditingController();
  final TextEditingController txtTelepon = TextEditingController();
  final TextEditingController txtEmail = TextEditingController();
  final RxnString selectedGender = RxnString();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 133, 195, 246),
      appBar: AppBar(
      title: const Text( "Registration Page", 
        style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        ),
      ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 133, 195, 246),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: MyTextfield(
                txtController: txtNama,
                myHint: "Input nama disini...",
                radius: 0,
              ),
            ),
            const SizedBox(height: 16),

            Container(
              child: MyTextfield(
                txtController: txtAlamat,
                myHint: "Input alamat disini...",
                radius: 0,
              ),
            ),
            const SizedBox(height: 16),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Obx(() => DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedGender.value,
                  hint: const Text("Pilih Gender ->"),
                  isExpanded: true,
                  items: ['Laki-laki', 'Perempuan'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newValue) {
                    if (newValue != null) {
                      selectedGender.value = newValue;
                    }
                  },
                ),
              )),
            ),
            const SizedBox(height: 16),

            Container(
              child: MyTextfield(
                keyboardType: TextInputType.number,
                txtController: txtTelepon,
                myHint: "Input nomor telepon disini...",
                radius: 0,
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),
            const SizedBox(height: 16),

            Container(
              child: MyTextfield(
                txtController: txtEmail,
                myHint: "Input email disini...",
                radius: 0,
              ),
            ),
            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Get.toNamed(
              Routes.confirmRegistration,
              arguments: {
                  'name': txtNama.text.toString(),
                  'alamat': txtAlamat.text.toString(),
                  'gender': selectedGender.value ?? '',
                  'telepon': txtTelepon.text.toString(),
                  'email': txtEmail.text.toString(),
                      },
                    );
                  },
                child: const Text("REGISTER NOW"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}