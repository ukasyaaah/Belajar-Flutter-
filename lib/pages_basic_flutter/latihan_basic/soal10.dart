import 'package:flutter/material.dart';

class Soal10 extends StatelessWidget {
  const Soal10({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Latihan Flutter 10'),
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          leading: FlutterLogo(),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu_open))],
        ),
        body: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.blueAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 150,
              height: 150,
              color: Colors.yellow,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
