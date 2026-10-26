import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/detail_list_makanan_controller.dart';
import 'package:flutter_application_1/models/detail_list_makan.dart';
import 'package:flutter_application_1/models/list_makanan_page.dart';
import 'package:get/get.dart';
import 'package:flutter_application_1/component/list_makanan_controller.dart'; 

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Rekomendasi Makanan", 
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)
            ),
          ),
          Container(
            height: 250, 
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal, 
              itemCount: controller.listMakanan.length,
              itemBuilder: (context, index) {
                final makanan = controller.listMakanan[index];
                
                return GestureDetector(
                  onTap: () {
                  Get.to(() => DetailListMakananPage(), arguments: makanan);
                  },
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    elevation: 3,
                    child: Container(
                      width: 160,
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Image.network(
                              makanan.gambar,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) => 
                                  const Icon(Icons.broken_image, size: 50),
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            makanan.namaMakanan, 
                            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            "Rp ${makanan.harga}", 
                            style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold)
                          ),
                          const SizedBox(height: 4),
                          Row(
                            children: [
                              const Icon(Icons.star, color: Colors.amber, size: 16),
                              const SizedBox(width: 4),
                              Text(makanan.rating.toString()),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}