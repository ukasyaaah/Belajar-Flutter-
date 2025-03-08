import 'dart:convert';

import 'package:flutter/material.dart';

/// Sebutan agar mudah saat dipanggil
import 'package:http/http.dart' as myhttp;

class HttpGet extends StatefulWidget {
  const HttpGet({super.key});

  @override
  State<HttpGet> createState() => _HttpGetState();
}

class _HttpGetState extends State<HttpGet> {
  late String nomor;
  late String nama;
  late String arti;

/// Pake initState untuk nilai awal
  @override
  void initState() {
    /// Awal2 blm ada data
    nomor = '';
    nama = '';
    arti = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HTTP Get')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("No. surah : $nomor", style: TextStyle(fontSize: 20)),
            Text("Nama : $nama", style: TextStyle(fontSize: 20)),
            Text("Arti : $arti", style: TextStyle(fontSize: 20)),
            SizedBox(height: 15),
            TextButton(
              onPressed: () async {


                var myResponse = await myhttp.get(
                  Uri.parse('https://quran-api.santrikoding.com/api/surah/14'),
                );
                if (myResponse.statusCode == 200) {
                  // apa aksi jika berhasil
                  print('Berhasil');

                  // Cara ubah ekstak String ke Objek gunakan json.Decode()
                  var data = jsonDecode(myResponse.body);

                  // gunakan setState utk mengubah tampilannya
                  setState(() {
                    /// Misal mau ambil nomor surah
                    nomor = data['nomor'].toString();

                    /// Gunakan toString()!!!
                    nama = data['nama'].toString();
                    arti = data['arti'].toString();
                  });
                } else {
                  // aksi jika gagal
                  print('Error ${myResponse.statusCode}');
                }

              },
              child: Text('Get Data'),
            ),
          ],
        ),
      ),
    );
  }
}
