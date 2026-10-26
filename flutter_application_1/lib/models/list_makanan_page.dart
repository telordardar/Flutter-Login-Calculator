import 'package:flutter/material.dart';
import 'package:flutter_application_1/component/list_makanan_controller.dart';
import 'package:flutter_application_1/routes.dart';
import 'package:get/get.dart';

class ListMakananPage extends StatelessWidget {
  ListMakananPage({super.key});

  final controller = Get.put(ListMakananController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("List Makanan")),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: controller.listMakanan.length,
          itemBuilder: (context, index) {
            final makanan = controller.listMakanan[index];
            return Dismissible(
              key: ValueKey(makanan.namaMakanan),
              direction: DismissDirection.endToStart,
              background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
              onDismissed: (direction) {
                controller.listMakanan.removeAt(index); 
                Get.snackbar(
                  "Makanan Dihapus",
                  "${makanan.namaMakanan} telah dihapus dari daftar.",
                );
              },
              child: InkWell(
                onTap: () {
                  Get.toNamed(Routes.detailMakanan, arguments: makanan);
                },
                child: ListTile(
                  title: Text(
                    makanan.namaMakanan,
                    style: const TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    "Rp ${makanan.harga}",
                    style: const TextStyle(fontSize: 15),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios_rounded),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}