import 'package:belajar_flutter/pages_http/latihan_materi/ftquran.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_ftbuilder.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_ftbuilder2.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_ftbuilder_lagi.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_http_request.dart';
import 'package:belajar_flutter/pages_http/latihan_materi/latihan_model_tfbuild.dart';
import 'package:belajar_flutter/pages_http/model.dart';
import 'package:belajar_flutter/widgets/text_button.dart';
import 'package:flutter/material.dart';

class PagesHttp extends StatelessWidget {
  const PagesHttp({super.key});

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
        '/EXAM': (context) => const LatihanHttpRequest(),
        '/quran': (context) => const Ftquran(),

      },

      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButtonn(
                  nav: '/FTBUILDER',
                  teks: 'Cek User',
                  color: Colors.red,
                ),
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
          
                SizedBox(height: 20),
          
                TextButtonn(
                  nav: '/EXAM',
                  teks: 'EXAM HTTP REQUEST',
                  color: Colors.blueGrey,
                ),
          
                     SizedBox(height: 20),
          
                TextButtonn(
                  nav: '/quran',
                  teks: 'EXAM HTTP REQUEST',
                  color: Colors.cyan,
                ),
          
                 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
