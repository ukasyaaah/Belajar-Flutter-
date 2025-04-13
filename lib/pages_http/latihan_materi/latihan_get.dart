import 'dart:convert';

import 'package:flutter/material.dart';

/// Import Duluu
import 'package:http/http.dart' as myhttp;

class LatihanGet extends StatefulWidget {
  const LatihanGet({super.key});

  @override
  State<LatihanGet> createState() => _LatihanGetState();
}

class _LatihanGetState extends State<LatihanGet> {
  String judul = '';
  String doa = '';
  String arti = '';
  bool isLoading = false; // Indikator loading
  String errorMessage = '';

  Future<void> getDoa() async {
    setState(() {
      isLoading = true;
      errorMessage = ''; // Reset error saat mulai request
    });

    final myResponse = await myhttp.get(
      Uri.parse('https://open-api.my.id/api/doa/24'),
    );

    final data = jsonDecode(myResponse.body);

    if (myResponse.statusCode == 200) {
      setState(() {
        judul = data['judul'].toString();
        doa = data['arab'].toString();
        arti = data['terjemah'].toString();
      });
    } else {
      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(
              title: Text('Data Error: ${myResponse.statusCode}'),
            ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Latihan Get Doa')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              judul,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              doa,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 10),

            Text(
              arti,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 10),

            TextButton(
              onPressed: () async {
                await getDoa();
              },
              child: Text('Print Doa'),
            ),
          ],
        ),
      ),
    );
  }
}
