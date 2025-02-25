import 'package:flutter/material.dart';

// Import File Widget nya
import '../widgets/kotak_warna.dart';

/*
1. Agar Kode ga terlalu panjang, gunakan extract widget
2. Caranya, pencet refactor atau tanda lampu
3. Pilih extract widget
*/
class ExtractWidget extends StatelessWidget {
  const ExtractWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Extract Widget'),
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // SEBELUM EXTRACT WIDGET
              Container(
                width: 200,
                height: 200,
                color: Colors.grey,
                child: Center(child: Text('Nama Warna')),
              ),

              // SETELAH EXTRACT WIDGET
              KotakWarna(teks: 'Merah', warna: Colors.redAccent),
              KotakWarna(teks: 'Kuning', warna: Colors.yellowAccent),
              KotakWarna(teks: 'Ijo', warna: Colors.lightGreenAccent),
            ],
          ),
        ),
      ),
    );
  }
}
