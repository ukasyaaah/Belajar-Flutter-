import 'package:flutter/material.dart';

/// Import Duluu
import 'package:http/http.dart' as myhttp;

class LatihanGet extends StatefulWidget {
  const LatihanGet({super.key});

  @override
  State<LatihanGet> createState() => _LatihanGetState();
}

class _LatihanGetState extends State<LatihanGet> {
  late String judul;
  late String doa;
  late String arti;

  @override
  void initState() {
    judul = '';
    doa = '';
    arti = '';
    super.initState();
  }

  Future<void> getDoa() async {
    final myResponse = 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Latihan Get Doa')),
      body: Center(
        child: Column(
          children: [
            Text('Judul', style: TextStyle(fontSize: 20)),
            Text('doa', style: TextStyle(fontSize: 14)),
            Text('arti', style: TextStyle(fontSize: 14)),
            TextButton(onPressed: () {}, child: Text('Print Doa')),
          ],
        ),
      ),
    );
  }
}
