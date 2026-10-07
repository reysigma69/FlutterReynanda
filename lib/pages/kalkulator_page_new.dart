import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/controller/kalkulator_controller.dart';

class KalkulatorPageNew extends StatelessWidget {
  KalkulatorPageNew({super.key});

  final controller = Get.put(KalkulatorController());
    final TextEditingController txtangka1 = TextEditingController();
    final TextEditingController txtangka2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color(0xFF2C2C2E),
      appBar: AppBar(
      title: Text("Kalkulator Pro", style: TextStyle(color: Colors.white)),
      backgroundColor: Color(0xFF2C2C2E),
      iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(50),
            child: TextField(
              controller: txtangka1,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                hintText: ("First Number Here..."),
                hintStyle: TextStyle(color: Colors.white))),
          ),
            Container(
            margin: EdgeInsets.all(50),
            child: TextField(
              controller: txtangka2,
              keyboardType: TextInputType.number,
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              decoration: InputDecoration(
                hintText:("Second Number Too..."),
                hintStyle: TextStyle(color: Colors.white))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 170, 52),
              foregroundColor: Colors.white,
              shape: CircleBorder(),
              padding: EdgeInsets.all(16),
            ),
            onPressed: () {
              if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                Get.snackbar(
                  "Peringatan",
                  "Angka tidak boleh kosong!",
                  snackPosition: SnackPosition.BOTTOM,
                );
              } else {
                controller.tambah(
                  double.parse(txtangka1.text.toString()),
                  double.parse(txtangka2.text.toString()),
                );
              };
            },
            child: Text("+"),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 170, 52),
              foregroundColor: Colors.white,
              shape: CircleBorder(),
              padding: EdgeInsets.all(16),
            ),
            onPressed: () {
              if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                Get.snackbar(
                  "Peringatan",
                  "Angka tidak boleh kosong!",
                  snackPosition: SnackPosition.BOTTOM,
                );
              } else {
                controller.kurang(
                  double.parse(txtangka1.text.toString()),
                  double.parse(txtangka2.text.toString()),
                );
              };
            },
            child: Text("-"),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 170, 52),
              foregroundColor: Colors.white,
              shape: CircleBorder(),
              padding: EdgeInsets.all(16),
            ),
            onPressed: () {
              if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                Get.snackbar(
                  "Peringatan",
                  "Angka tidak boleh kosong!",
                  snackPosition: SnackPosition.BOTTOM,
                );
              } else {
                controller.kali(
                  double.parse(txtangka1.text.toString()),
                  double.parse(txtangka2.text.toString()),
                );
              };
            },
            child: Text("x"),
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 255, 170, 52),
              foregroundColor: Colors.white,
              shape: CircleBorder(),
              padding: EdgeInsets.all(16),
            ),
            onPressed: () {
              if (txtangka1.text.isEmpty || txtangka2.text.isEmpty) {
                Get.snackbar(
                  "Peringatan",
                  "Angka tidak boleh kosong!",
                  snackPosition: SnackPosition.BOTTOM,
                );
              } else {
                controller.bagi(
                  double.parse(txtangka1.text.toString()),
                  double.parse(txtangka2.text.toString()),
                );
              };
            },
            child: Text("/"),
          ),
          Obx(
            () => Text(
              controller.hasilHitung.toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 100,
                ),
              ),
            ),
          ],
        ),
      ],
      ),
    );
  }
}