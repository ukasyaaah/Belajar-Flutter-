import 'package:flutter/material.dart';

class Soal19 extends StatelessWidget {
  const Soal19({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: 6,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Container(
                  // Buat ngasih jarak antar Container
                  padding: EdgeInsets.all(20),

                  // Jadiin posisi teks bawah kiri
                  alignment: Alignment.bottomLeft,

                  // Tinggi Containernya
                  height: 200,

                  // Style Container nya
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,

                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                        'https://picsum.photos/id/${220 + index}/200/300',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),

                  // Teksnya
                  child: Text(
                    'Hello ${index + 1}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
