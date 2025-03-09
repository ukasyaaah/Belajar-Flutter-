import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LatihanDelete extends StatefulWidget {
  const LatihanDelete({super.key});

  @override
  State<LatihanDelete> createState() => _LatihanDeleteState();
}

class _LatihanDeleteState extends State<LatihanDelete> {
  String textData = 'Data masih kosong';

  Future<void> addData() async {
    final response = await http.get(Uri.parse('https://reqres.in/api/users/6'));

    final data = jsonDecode(response.body);

    if (response.statusCode == 200) {
      setState(() {
        textData =
            '${data['data']['email']}\n ${data['data']['first_name']} ${data['data']['last_name']}';
      });
    } else {
      setState(() {
        textData = 'Error: ${response.statusCode}, Tambah data gagal';
      });
    }
  }

  Future<void> deleteData() async {
    final uri = Uri.parse('https://reqres.in/api/users/6');
    final response = await http.delete(uri);

    if (response.statusCode == 204) {
      setState(() {
        textData = 'Data Berhasil Dihapus';
      });
    } else {
      setState(() {
        textData = 'Error: ${response.statusCode}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            IconButton(
              onPressed: () {
                addData();
              },
              icon: Icon(Icons.add),
            ),
            SizedBox(height: 15),
            Text(textData, textAlign: TextAlign.center),
            SizedBox(height: 15),
            TextButton(
              onPressed: () {
                deleteData();
              },
              child: Text('Delete'),
            ),
          ],
        ),
      ),
    );
  }
}
