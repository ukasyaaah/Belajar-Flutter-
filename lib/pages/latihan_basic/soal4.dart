import 'dart:math';

import 'package:flutter/material.dart';

class Soal4 extends StatelessWidget {
  const Soal4({super.key});

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
          child: Transform.rotate(
            // pi = 180 derajat
            // pi / 2 = 180 / 2 = 90 derajat
            // Kalo mau spesifik,
            //20 derajat = pi / (180 / 20)
            angle: pi / (180 / 90),
            child: FlutterLogo(size: 200),
          ),
        ),
      ),
    );
  }
}
