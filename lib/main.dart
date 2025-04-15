import 'package:belajar_flutter/widgets/text_button.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_ftbuilder.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_ftbuilder_lagi.dart';
import 'package:belajar_flutter/pages_http/model.dart';

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
        '/model': (context) => Model(),
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
            SizedBox(height: 20),
            TextButtonn(nav: '/model', teks: 'Model', color: Colors.green),
          ],
        ),
      ),
    );
  }
}
