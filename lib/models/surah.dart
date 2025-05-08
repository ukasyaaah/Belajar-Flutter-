class Surah {
  final int nomor;
  final String nama;
  final String namaLatin;
  final List<Ayat> ayat;

  Surah({required this.nomor, required this.nama, required this.namaLatin, required this.ayat});

  factory Surah.fromJson(Map<String, dynamic> json) {
    return Surah(
      nomor: json['nomor'],
      nama: json['nama'],
      namaLatin: json['namaLatin'],
      ayat: (json['ayat'] as List).map((json) => Ayat.fromJson(json)).toList()
    );
  }
}

class Ayat{
  final String teksArab;
  final String teksLatin;

Ayat({
required this.teksArab,
required this.teksLatin,
});

factory Ayat.fromJson(Map<String, dynamic> json){
  return Ayat(teksArab: json['teksArab'], teksLatin: json['teksLatin']);
}
}
