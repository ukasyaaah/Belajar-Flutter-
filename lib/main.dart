import 'package:belajar_flutter/const/color.dart';
import 'package:belajar_flutter/pages/pages_color.dart';
import 'package:belajar_flutter/pages/pages_http.dart';
import 'package:belajar_flutter/pages/pages_package.dart';
import 'package:belajar_flutter/pages_package/introduction.dart';
import 'package:belajar_flutter/widgets/text_button.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(MyAmazingApp());
}

class MyAmazingApp extends StatefulWidget {
  const MyAmazingApp({super.key});

  @override
  State<MyAmazingApp> createState() => _MyAmazingAppState();
}

class _MyAmazingAppState extends State<MyAmazingApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.purpleAccent,
        appBarTheme: AppBarTheme(backgroundColor: Colors.pinkAccent),
        textTheme: TextTheme(bodyMedium: TextStyle(color: myGreen)),
      ),

      debugShowCheckedModeBanner: false,
      routes: {
        '/http': (context) => const PagesHttp(),
        '/package': (context) => const PagesPackage(),
        '/color': (context) => const PagesColor(),
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
            TextButtonn(
              nav: '/package',
              teks: 'Package',
              color: Colors.yellowAccent,
            ),
            SizedBox(height: 20),
            TextButtonn(nav: '/color', teks: 'Color', color: Colors.green),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
