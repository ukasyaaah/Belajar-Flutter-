import 'package:belajar_flutter/pages/pages_http.dart';
import 'package:belajar_flutter/pages/pages_package.dart';
import 'package:belajar_flutter/pages_package/introduction.dart';
import 'package:belajar_flutter/widgets/text_button.dart';

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
        '/http': (context) => const PagesHttp(),
        '/package': (context) => const PagesPackage(),
        
        
        },
      home: Introduction(),
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
            TextButtonn(nav: '/http', teks: 'HTTP', color: Colors.red),
            SizedBox(height: 20),
             TextButtonn(nav: '/package', teks: 'Package', color: Colors.yellowAccent),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
