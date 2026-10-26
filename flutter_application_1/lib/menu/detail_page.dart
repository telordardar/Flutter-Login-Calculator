import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/component/detail_list_makanan_controller.dart'; 

class DetailPage extends StatelessWidget {
  DetailPage({super.key});

  final controller = Get.put(DetailListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(controller.makanan.namaMakanan),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            controller.makanan.gambar,
            width: double.infinity,
            height: 250,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  controller.makanan.namaMakanan,
                  style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  "Rp ${controller.makanan.harga}",
                  style: const TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text("Deskripsi:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 4),
                Text(controller.makanan.deskripsi),
                const SizedBox(height: 16),
                const Text("Review:", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                const SizedBox(height: 4),
                Text('"${controller.makanan.review}"', style: const TextStyle(fontStyle: FontStyle.italic)),
              ],
            ),
          )
        ],
      ),
    );
  }
}