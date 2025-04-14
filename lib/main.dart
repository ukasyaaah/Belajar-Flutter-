import 'package:belajar_flutter/pages_http/ftbuilder.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_ftbuilder.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_ftbuilder_lagi.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyAmazingApp());
}

class MyAmazingApp extends StatelessWidget {
  const MyAmazingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/FTBUILDER': (context) => const LatihanFtbuilder(),
        '/ftbuilderexam': (context) => const LatihanFtbuilderLagi(),
      },
      home: Homie(),
    );
  }
}

class Homie extends StatelessWidget {
  const Homie({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButtonn(nav: '/FTBUILDER', teks: 'Cek User', color: Colors.red),
            SizedBox(height: 20),
            TextButtonn(
              nav: '/ftbuilderexam',
              teks: 'Cek Meals',
              color: Colors.yellow,
            ),
          ],
        ),
      ),
    );
  }
}

class TextButtonn extends StatelessWidget {
  final String nav;
  final String teks;
  final Color color;
  const TextButtonn({
    super.key,
    required this.nav,
    required this.teks,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(nav);
      },
      child: Text(
        teks,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }
}
