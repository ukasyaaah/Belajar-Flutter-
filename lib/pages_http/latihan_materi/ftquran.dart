import 'dart:convert';
import 'dart:math';

import 'package:belajar_flutter/models/surah.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Ftquran extends StatefulWidget {
  const Ftquran({super.key});

  @override
  State<Ftquran> createState() => _FtquranState();
}

class _FtquranState extends State<Ftquran> {
  Future<Surah> getSurah() async {
    final response = await http.get(
      Uri.parse('https://equran.id/api/v2/surat/114'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> json =
          (jsonDecode(response.body) as Map<String, dynamic>)['data'];

      return Surah.fromJson(json);
    }else{
      throw Exception('hayo');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<Surah>(
        future: getSurah(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            final surahh = snapshot.data!;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(surahh.nama),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: surahh.ayat.length,
                    itemBuilder: (context, index) {
                      final ayat = surahh.ayat[index];
                      return Column(
                        children: [
                          SizedBox(height: 10),
                          Text(ayat.teksArab),
                          SizedBox(height: 10),
                          Text(ayat.teksLatin),
                        ],
                      );
                    },
                  ),
                ),
              ],
            );
          }
        },
      ),
    );
  }
}
