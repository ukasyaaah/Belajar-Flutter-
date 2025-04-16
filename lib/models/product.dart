class Product {
  final String judul;
  final String img;
  final String deskripsi;

  Product({required this.judul, required this.img, required this.deskripsi});

  /// From Json
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      judul: json['judul'],
      img: json['img'],
      deskripsi: json['deskripsi'],
    );
  }
}
