import 'package:belajar_flutter/const/color.dart';
import 'package:flutter/material.dart';

class PagesColor extends StatefulWidget {
  const PagesColor({super.key});

  @override
  State<PagesColor> createState() => _PagesColorState();
}

class _PagesColorState extends State<PagesColor> {
  final isDark = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myWhite,
      appBar: AppBar(
        title: Text('Latihan Color'),
        titleTextStyle: TextStyle(color: myWhite, fontSize: 23),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Teks Biasa'),
            Text('Teks 15', style: TextStyle(fontSize: 15)),
            Text('Teks 20', style: TextStyle(fontSize: 20)),
            Text('Teks 30', style: TextStyle(fontSize: 30)),
            Text('Teks 40', style: TextStyle(fontSize: 40)),
          ],
        ),
      ),
    );
  }
}
