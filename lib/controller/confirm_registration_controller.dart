import 'package:get/get.dart';

class ConfirmRegistrationController extends GetxController {
  var nama = ' '.obs;
  var alamat = ''.obs;
  var gender = ''.obs;
  var telepon = ''.obs;
  var email = ''.obs;

  @override
  void onInit() {
    super.onInit();
    if (Get.arguments != null) {
      nama.value = Get.arguments['name'] ?? '';
      alamat.value = Get.arguments['alamat'] ?? '';
      gender.value = Get.arguments['gender'] ?? '';
      telepon.value = Get.arguments['telepon'] ?? '';
      email.value = Get.arguments['email'] ?? '';
    }
  }
}