import 'package:belajar_flutter/pages_http/latihan_materi/latihan_ftbuilder2.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_model_tfbuild.dart';
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
        '/ftbuilder2': (context) => const LatihanFtbuilder2(),
        '/model': (context) => Model(),
        '/modelWft': (context) => const LatihanModelTfbuild(),
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
            TextButtonn(
              nav: '/ftbuilder2',
              teks: 'Future Builder 2 with Models',
              color: Colors.blue,
            ),
            SizedBox(height: 20),

            TextButtonn(nav: '/model', teks: 'Model', color: Colors.green),

            SizedBox(height: 20),

            TextButtonn(
              nav: '/modelWft',
              teks: 'Model & FT Builder',
              color: Colors.deepPurpleAccent,
            ),
          ],
        ),
      ),
    );
  }
}
