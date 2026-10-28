import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/controller/list_produk_controller.dart';
import 'package:my_first_flutter_project/pages/menu_drawer.dart';
import 'package:my_first_flutter_project/routes.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListProdukController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
      drawer: MenuDrawer(),
      appBar: AppBar(
        title: const Text(
          "ReynandaStuffStore",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 10, 169, 4),
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "Recommended For You",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(height: 12),
            
            Container(
              height: 240, 
              child: Obx(() => ListView.builder(
                scrollDirection: Axis.horizontal, 
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                itemCount: controller.listProduk.length,
                itemBuilder: (context, index) {
                  final produk = controller.listProduk[index];
                  
                  return Container(
                    width: 140, 
                    margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 4.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 5,
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
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                                child: Container(
                                  width: double.infinity,
                                  color: Colors.grey[200],
                                  child: Image.network(
                                    produk.gambarProduk,
                                    fit: BoxFit.cover,
                                    errorBuilder: (context, error, stackTrace) =>
                                        const Icon(Icons.broken_image, size: 40, color: Colors.grey),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    produk.namaProduk,
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                    maxLines: 2, 
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Container(height: 6),
                                  Text(
                                    produk.harga,
                                    style: TextStyle(
                                      color: Colors.green[700],
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              )),
            ),
          ],
        ),
      ),
    );
  }
}