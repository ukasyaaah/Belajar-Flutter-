import 'package:flutter/material.dart';

class SoalLatihan extends StatelessWidget {
  const SoalLatihan({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: false,
          leading: FlutterLogo(),
          title: Text('Flutter Latihan 1'),
          actions: [
            IconButton(
              onPressed: () {
                print('Hello Ukhasyah');
              },
              icon: Icon(Icons.more_vert),
              iconSize: 24,
            ),
          ],
        ),
        body: Center(
          child: Text(
            'Hello World',
            style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
