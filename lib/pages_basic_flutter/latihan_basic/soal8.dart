import 'package:flutter/material.dart';

class Soal8 extends StatelessWidget {
  const Soal8({super.key});

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
        body: Row(
          // Pake space between
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              // margin: EdgeInsets.only(right: 20),
              width: 150,
              height: 150,
              color: Colors.blueAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),

            // SizedBox(width: 20),
            Container(
              // margin: EdgeInsets.only(left: 20),
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
