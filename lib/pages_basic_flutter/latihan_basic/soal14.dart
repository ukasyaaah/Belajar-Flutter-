import 'package:flutter/material.dart';

class Soal14 extends StatelessWidget {
  const Soal14({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Latihan Flutter 12'),
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          leading: FlutterLogo(),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu_open))],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blueAccent,
                  child: Center(
                    child: Text('Hello', style: TextStyle(color: Colors.white)),
                  ),
                ),

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
            SizedBox(width: 20),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: [
                Container(
                  width: 150,
                  height: 150,
                  color: Colors.yellow,
                  child: Center(
                    child: Text('Hello', style: TextStyle(color: Colors.white)),
                  ),
                ),

                Container(
                  width: 150,
                  height: 150,
                  color: Colors.blueAccent,
                  child: Center(
                    child: Text('Hello', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
