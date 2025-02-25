import 'dart:math';

import 'package:flutter/material.dart';

class BuilderPage extends StatelessWidget {
  const BuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Widget Builder')),
        body: SizedBox(
          child: GridView.builder(
            padding: EdgeInsets.all(15),
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Jumlah baris fix
              mainAxisSpacing: 10, // Kebawah / Vertical
              crossAxisSpacing: 10, // Kesamping / Horizontal
            ),
            itemBuilder:
                (context, index) => Container(
                  width: 100,
                  height: 100,
                  color: Color.fromARGB(
                    255,
                    Random().nextInt(256),
                    Random().nextInt(256),
                    Random().nextInt(256),
                  ),
                  child: Center(child: Text('Angka ke ${index + 1}')),
                ),
          ),
        ),
      ),
    );
  }
}
