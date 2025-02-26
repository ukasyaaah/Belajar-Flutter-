import 'dart:math';

import 'package:flutter/material.dart';
import '../widgets/kotak_warna.dart';

class MappingCollections extends StatelessWidget {
  // List Data
  List<Map<String, dynamic>> data = List.generate(
    /// Generate 10 data
    10,

    /// (index) adalah angka 0 - 9
    (index) => {
      'teks': 'Kotak ke ${index + 1}',
      'warna': Color.fromARGB(
        /// Buat warna random dari nol - maks 255.
        255,
        Random().nextInt(256),

        /// hijau 0 - 255
        Random().nextInt(256),

        /// merah 0 - 255
        50 + Random().nextInt(256),

        /// biru 50 - 255
      ),
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children:
                data
                    /// (ambil) adalah parameter, namanya bisa di custom juga
                    /// e['teks'] untuk mengambil teks di data untuk ditampilkan ke UI
                    .map(
                      (ambil) => KotakWarna(
                        /// Ambil teks dari Map
                        teks: ambil['teks'],

                        /// Ambil warna dari Map
                        warna: ambil['warna'],
                      ),
                    )
                    .toList(), // Ubah Iterable ke List
          ),
        ),
      ),
    );
  }
}
