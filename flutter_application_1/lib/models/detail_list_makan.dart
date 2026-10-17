import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/component/detail_list_makanan_controller.dart';
class DetailListMakananPage extends StatelessWidget {
  DetailListMakananPage({super.key});

  final DetailListMakananController controller = Get.put(DetailListMakananController()); // ← fix

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Makanan")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              controller.makanan.gambar,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return const SizedBox(
                  height: 200,
                  child: Center(child: Icon(Icons.image, size: 50)),
                );
              },
            ),

            const SizedBox(height: 16),

            Text(
              controller.makanan.namaMakanan, // ← controller.makanan
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Text(
              "Harga: Rp ${controller.makanan.harga}", // ← controller.makanan
              style: const TextStyle(fontSize: 18),
            ),

            const SizedBox(height: 8),

            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 22),
                const SizedBox(width: 5),
                Text(
                  "${controller.makanan.rating} / 5.0", // ← controller.makanan
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),

            const SizedBox(height: 16),

            const Text(
              "Deskripsi",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Text(controller.makanan.deskripsi), // ← controller.makanan

            const SizedBox(height: 16),

            const Text(
              "Review",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 8),

            Text(controller.makanan.review), // ← controller.makanan
          ],
        ),
      ),
    );
  }
}