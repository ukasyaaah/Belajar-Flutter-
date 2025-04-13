import 'package:flutter/material.dart';

class Soal6 extends StatelessWidget {
  const Soal6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Latihan Flutter 3'),
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          leading: FlutterLogo(),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu_open))],
        ),
        body: Center(
          //Widget ClipOval biar jadi Lingkaran
          child: Container(
            // Agar menjadi lingkaran, bisa juga menggunakan Box
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 5, 42, 72),
              borderRadius: BorderRadius.circular(200 / 2),
            ),
            width: 200,
            height: 200,
            child: Center(
              child: Text(
                'Hello',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
