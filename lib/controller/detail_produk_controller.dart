import 'package:get/get.dart';

class DetailProdukController extends GetxController{
  late String namaProduk;
  late String harga;
  late String gambarProduk;
  late String deskripsi;
  late String review;
  late String rating;
  late String namaToko;

@override
  void onInit() {
    super.onInit();
    final arguments = Get.arguments;
    namaProduk = arguments['nama produk'];
    harga = arguments['harga produk'];
    gambarProduk = arguments['gambar produk'];
    deskripsi = arguments['deskripsi produk'];
    review = arguments['review produk'];
    rating = arguments['rating produk'];
    namaToko = arguments['nama toko'];
  }
}