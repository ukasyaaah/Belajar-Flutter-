import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Soal17 extends StatelessWidget {
  const Soal17({super.key});

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
        body: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),

            Container(
              width: 100,
              height: 100,
              color: Colors.amberAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),

            Container(
              width: 100,
              height: 100,
              color: Colors.amberAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),

            Container(
              width: 100,
              height: 100,
              color: Colors.amberAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),

            Container(
              width: 100,
              height: 100,
              color: Colors.amberAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),

            Container(
              width: 100,
              height: 100,
              color: Colors.amberAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),

            Container(
              width: 100,
              height: 100,
              color: Colors.amberAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),

            Container(
              width: 100,
              height: 100,
              color: Colors.amberAccent,
              child: Center(
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blueAccent,
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
