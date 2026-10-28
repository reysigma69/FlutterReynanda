import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/controller/list_produk_controller.dart';
import 'package:my_first_flutter_project/models/produk_model.dart';
import 'package:my_first_flutter_project/pages/list_detail_produk.dart';
import 'package:my_first_flutter_project/routes.dart';

class ListProdukPage extends StatelessWidget {
  ListProdukPage({super.key});

  final controller = Get.put(ListProdukController());

  void _tampilDialogEdit(ProdukModel produk, int index) {
    final namaCtrl = TextEditingController(text: produk.namaProduk);
    final hargaCtrl = TextEditingController(text: produk.harga);

    Get.defaultDialog(
      title: "Edit Produk",
      titleStyle: const TextStyle(fontWeight: FontWeight.bold),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            controller: namaCtrl,
            decoration: const InputDecoration(
              labelText: "Nama Produk", 
              border: OutlineInputBorder()
            ),
          ),
          const SizedBox(height: 12),
          TextField(
            controller: hargaCtrl,
            decoration: const InputDecoration(
              labelText: "Harga", 
              border: OutlineInputBorder()
            ),
          ),
        ],
      ),
      textConfirm: "Simpan",
      confirmTextColor: Colors.white,
      textCancel: "Batal",
      buttonColor: Colors.green,
      onConfirm: () {
        controller.editProduk(index, namaCtrl.text, hargaCtrl.text);
        Get.back();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 161, 199, 168),
      appBar: AppBar(
        title: const Text(
          "ReynandaStuffStore",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 10, 169, 4),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: Obx(() => RefreshIndicator(
          onRefresh: controller.refreshData,
          child: ListView.builder(
            itemCount: controller.listProduk.length,
            itemBuilder: (context, index) {
              final produk = controller.listProduk[index];
              
              return Dismissible(
                key: UniqueKey(), 
                direction: DismissDirection.endToStart,
                background: Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  child: const Icon(Icons.delete, color: Colors.white, size: 30),
                ),
                onDismissed: (direction) {
                  controller.hapusProduk(index);
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(0, 0),
                        blurRadius: 10,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Card(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      onTap: () {
                        Get.toNamed(
                          Routes.detailProduk,
                          arguments: produk,
                        );
                      },
                      onLongPress: () {
                        Get.bottomSheet(
                          Container(
                            color: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Wrap(
                              children: [
                                ListTile(
                                  leading: const Icon(Icons.edit, color: Colors.blue),
                                  title: const Text('Edit Produk'),
                                  onTap: () {
                                    Get.back();
                                    _tampilDialogEdit(produk, index);
                                  },
                                ),
                                ListTile(
                                  leading: const Icon(Icons.delete, color: Colors.red),
                                  title: const Text('Hapus Produk'),
                                  onTap: () {
                                    Get.back(); 
                                    controller.hapusProduk(index);
                                  },
                                ),
                              ],
                            ),
                          ),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(20))
                          ),
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              width: 52,
                              height: 52,
                              color: Colors.grey[200],
                              child: Image.network(
                                produk.gambarProduk,
                                fit: BoxFit.cover,
                                errorBuilder: (context, error, stackTrace) =>
                                    const Icon(
                                  Icons.broken_image,
                                  size: 24,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                          title: Text(
                            produk.namaProduk,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black87,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              produk.harga,
                              style: TextStyle(
                                color: Colors.green[700],
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          trailing: Container(
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              size: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        )),
      ),
    );
  }
}