import 'package:flutter/material.dart';

/// Step 1 : Bikin void main.
/// Step 2 : Bikin runApp.
/// Step 3 : buat class MyApp dan mengekstensi StatelessWidget 
void main() {
  // runApp : untuk menjalankan aplikasi kita,
  // runApp (bisa dijalankan kalo udah import material.dart)
  // Aplikasi kita berbentuk class bernama MyApp()
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Scaffold Sebagai wadah ngoding, atau bisa juga Canvas
      home: Scaffold(
        backgroundColor: Colors.red[200],
body: Center(child: Text('Hello World')),
      ),
    );
  }
}
