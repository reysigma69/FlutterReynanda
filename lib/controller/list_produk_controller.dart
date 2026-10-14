import 'package:get/get.dart';
import 'package:my_first_flutter_project/models/produk_model.dart';

class ListProdukController extends GetxController {
  List<ProdukModel> listProduk = [
    ProdukModel(
      namaProduk: "Xiaomi 18 Pro Max",
      harga: "Rp 15.999.000",
      gambarProduk: "https://www.giztop.com/media/catalog/product/cache/97cc1143d2e20f2b0c8ea91aaa12053c/p/m/pms_1790062633.5757078_3.png",
      deskripsi: "Smartphone flagship Xiaomi dengan kolaborasi kamera Leica kelas atas, performa Snapdragon terbaru, dan fast charging super ngebut.",
      review:
          "Kamera Leica-nya juara banget buat foto low light, performa stabil!",
      rating: 5,
      namaToko: "Xiaomi Official Store",
    ),
    ProdukModel(
      namaProduk: "iPhone 18 Pro Max",
      harga: "Rp 24.500.000",
      gambarProduk: "https://www.digimap.co.id/cdn/shop/files/0788-APPMJXQ4ID-A-1.jpg?v=1790850840",
      deskripsi: "Generasi terbaru iPhone dengan chip A-series berperforma tinggi dan desain titanium mewah.",
      review: "Performa ngebut, baterai awet seharian.",
      rating: 5,
      namaToko: "iBox Official Store",
    ),
    ProdukModel(
      namaProduk: "ROG Zephyrus G16 RTX 5090 2026",
      harga: "Rp 102.499.000",
      gambarProduk: "https://www.softcom.co.id/wp-content/uploads/2026/06/br-m036969-00220_full06-ca168680.webp",
      deskripsi: "Laptop gaming ultra-tipis flagship dengan prosesor kencang dan GPU NVIDIA GeForce RTX 5090 untuk performa gaming rata kanan serta AI rendering tanpa kompromi.",
      review: "Performanya di luar nalar! Desainnya keren banget, layar OLED-nya jernih parah buat gaming dan kerja berat.",
      rating: 5,
      namaToko: "ASUS Official Store",
    ),
    ProdukModel(
      namaProduk: "PlayStation 5 Pro",
      harga: "Rp 14.699.000",
      gambarProduk: "https://gmedia.playstation.com/is/image/SIEPDC/ps5-pro-dualsense-image-block-01-en-16aug24",
      deskripsi: "Konsol game next-gen versi Pro dengan performa grafis lebih tinggi dan stabil di resolusi 4K.",
      review: "Grafis game jadi makin mulus dan realistis.",
      rating: 5,
      namaToko: "Sony Authorized Store",
    ),
    ProdukModel(
      namaProduk: "LG OLED Evo AI G5 97 Inch",
      harga: "Rp 334.000.000",
      gambarProduk: "https://imgs.search.brave.com/S0NxnfyuMQKwPaxI1t7Jd9C_rpcP8ODAdqj2fTbtw40/rs:fit:860:0:0:0/g:ce/aHR0cHM6Ly9tLm1l/ZGlhLWFtYXpvbi5j/b20vaW1hZ2VzL0kv/OTE1MjFrRm9JSkwu/anBn",
      deskripsi: "Smart TV flagship LG 97 inch beresolusi 4K dengan teknologi OLED Evo, ditenagai AI Processor mutakhir untuk kualitas gambar super sinematik.",
      review: "Visualnya bagaikan bioskop pribadi, hitamnya pekat dan warnanya sangat hidup di layar raksasa!",
      rating: 5,
      namaToko: "LG Electronics Official Store",
    ),
    ProdukModel(
      namaProduk: "Mechanical Keyboard VortexSeries Mono V2",
      harga: "Rp 418.999",
      gambarProduk: "https://down-id.img.susercontent.com/file/id-11134207-8224v-mhkbkndcx9tx21",
      deskripsi: "Keyboard mekanikal 87% layout dengan hot-swappable switch dan kenyamanan mengetik maksimal.",
      review: "Enak banget buat ngetik koding dan main game.",
      rating: 5,
      namaToko: "VortexSeries Store",
    ),
    ProdukModel(
      namaProduk: "ASUS TUF Gaming A16 (FA607NUG)",
      harga: "Rp 21.590.000",
      gambarProduk: "https://down-id.img.susercontent.com/file/id-11134207-81ztp-metkhfz46w3n98",
      deskripsi: "Laptop gaming tangguh standar militer dengan AMD Ryzen 7 dan grafis RTX 4050.",
      review:
          "Kokoh, adem, dan sangat diandalkan untuk tugas kuliah dan ngoding.",
      rating: 5,
      namaToko: "NVIDIA GeForce Laptop Official Shop",
    ),
    ProdukModel(
      namaProduk: "Infinix GT 30 Pro",
      harga: "Rp 4.899.000",
      gambarProduk: "https://infogadgetpro.com/wp-content/uploads/2026/01/Infinix-GT-30-Pro.png",
      deskripsi: "Smartphone gaming berperforma tinggi dengan chipset ngebut, layar AMOLED mulus 144Hz, dan desain cyber mecha yang keren.",
      review: "Gahar banget buat main game rata kanan tanpa ngelag, desainnya futuristik!",
      rating: 5,
      namaToko: "Infinix Official Shop",
    ),
    ProdukModel(
      namaProduk: "MacBook Pro 16 M5 Max",
      harga: "Rp 87.999.000",
      gambarProduk: "https://www.digimap.co.id/cdn/shop/files/0788-APPMGED4ID-A-1.jpg?v=1778420625&width=1920",
      deskripsi: "Laptop kreator kelas profesional tertinggi ditenagai chip M5 Max, RAM masif, dan layar Liquid Retina XDR yang memukau untuk rendering serta kompilasi berat.",
      review: "Performa koding, rendering video 8K, dan multitasking berjalan sangat instan tanpa ada kendala sama sekali.",
      rating: 5,
      namaToko: "iBox Official Store",
    ),
    ProdukModel(
      namaProduk: "Fantech Kanata S VX9S",
      harga: "Rp 150.000",
      gambarProduk: "https://down-id.img.susercontent.com/file/id-11134207-7rbk0-m7n9q7ahe24kba",
      deskripsi: "Mouse gaming ergonomis berbobot ringan dengan sensor presisi tinggi dan pencahayaan RGB yang stylish untuk penggunaan harian maupun gaming.",
      review: "Nyaman digenggam, klikannya responsif, sangat worth it di kelas harganya.",
      rating: 5,
      namaToko: "Fantech Official Shop",
    ),
  ];
}
