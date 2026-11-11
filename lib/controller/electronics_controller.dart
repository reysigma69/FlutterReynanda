import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:my_first_flutter_project/models/electronics_model.dart';

class ElectronicsController extends GetxController {
  var isLoading = false.obs;
  var listElectronics = <ElectronicsModel>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchElectronics();
  }

  void fetchElectronics() async {
    try {
      isLoading.value = true;
      final url = Uri.parse("https://fakestoreapi.com/products/category/electronics");

      final response = await http.get(url);

      isLoading.value = false;

      if (response.statusCode == 200) {
        final data = electronicsModelFromJson(response.body);
        listElectronics.assignAll(data);
      } else {
        Get.snackbar("Gagal", "Status code: ${response.statusCode}");
      }
    } catch (e) {
      isLoading.value = false;
      Get.snackbar("Error", e.toString());
    }
  }
}