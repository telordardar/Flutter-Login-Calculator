import 'package:get/get.dart';
import 'package:flutter_application_1/models/makanan_models.dart';
class ListMakananController extends GetxController {
  List<MakananModels> listMakanan = [
    // ← MakananModels
    MakananModels(
      namaMakanan: "Nasi Goreng",
      harga: "15000",
      rating: 4.5,
      deskripsi: "Nasi goreng dengan bumbu rempah pilihan.",
      review: "Sangat enak!",
      gambar: "https://thumbs.dreamstime.com/b/delicious-nasi-goreng-ayam-indonesian-fried-rice-chicken-plate-flavorful-garnished-crispy-crackers-onions-358047050.jpg",
    ),
    MakananModels(
      namaMakanan: "Ayam Bakar",
      harga: "20000",
      rating: 4.0,
      deskripsi: "Ayam bakar dengan bumbu rempah yang meresap.",
      review: "Ayam empuk dan bumbunya gurih dan lezat!",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQBH5h1HPBZLLShiTfE2rcD2TVGWMNRLLSlYLYwSTBLblOOgQcog5Y49Grh&s=10",
    ),
    MakananModels(
      namaMakanan: "Sate",
      harga: "25000",
      rating: 4.5,
      deskripsi: "Sate dengan bumbu kacang yang gurih.",
      review: "Dagingnya empuk dan bumbunya mantap!",
      gambar: "https://www.dapurkobe.co.id/wp-content/uploads/sate-ayam.jpg",
    ),
    MakananModels(
      namaMakanan: "Gado-Gado",
      harga: "12000",
      rating: 4.5,
      deskripsi: "Gado-gado dengan sayuran segar dan saus kacang.",
      review: "Sehat dan enak!",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0yiI54abKf-HZ8ve3LSrZh7WZUJr77sdNjSzo0GXEClmCDLHXLepARaM&s=10",
    ),
    MakananModels(
      namaMakanan: "Ayam Geprek Bakar",
      harga: "15000",
      rating: 4.8,
      deskripsi: "Ayam geprek bakar dengan sambal pedas.",
      review: "Pedasnya pas, bikin nagih!",
      gambar: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpHShj59W1dpTt_z78M87bGSsBKgoJHI2G6bPk8pITG6fD6FavWZly9IM&s=10",
    ),
  ];
}