import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_first_flutter_project/models/produk_model.dart';

class ListDetailProduk extends StatelessWidget {
  ListDetailProduk({super.key});

  final ProdukModel produk = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 161, 199, 168),
      appBar: AppBar(
        title: Text(
          produk.namaProduk,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color.fromARGB(255, 10, 169, 4),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 350,
              width: double.infinity,
              color: Colors.white,
              child: Image.network(
                produk.gambarProduk,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => Container(
                  color: Colors.grey[300],
                  child: Icon(Icons.broken_image, size: 80, color: Colors.grey),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      offset: Offset(0, 0),
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
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          produk.namaToko,
                          style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 0, 139, 209), fontWeight: FontWeight.w600),
                        ),
                        SizedBox(height: 8),
                        Text(
                          produk.namaProduk,
                          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
                        ),
                        SizedBox(height: 8),
                        Text(
                          produk.harga,
                          style: TextStyle(fontSize: 20, color: Colors.green[700], fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 16),
                        Divider(),
                        SizedBox(height: 8),
                        Text(
                          "Deskripsi Produk",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
                        ),
                        SizedBox(height: 4),
                        Text(
                          produk.deskripsi,
                          style: TextStyle(fontSize: 14, color: Colors.grey[800], height: 1.4),
                        ),
                        SizedBox(height: 16),
                        Text(
                          "Ulasan Pembeli (Rating: ${produk.rating}/5)",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
                        ),
                        SizedBox(height: 8),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            '"${produk.review}"',
                            style: TextStyle(fontSize: 14, fontStyle: FontStyle.italic, color: Colors.grey[800]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}