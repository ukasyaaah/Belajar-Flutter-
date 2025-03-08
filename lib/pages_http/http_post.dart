import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPost extends StatefulWidget {
  const HttpPost({super.key});

  @override
  State<HttpPost> createState() => _HttpPostState();
}

class _HttpPostState extends State<HttpPost> {
  TextEditingController nameC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  /// Pake initState boleh, pake biasa gini boleh
  String hasilResponse = 'Belum ada data';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          TextField(
            controller: nameC,
            autocorrect: false,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Name',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),
          TextField(
            controller: jobC,
            autocorrect: false,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Job',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),
          TextButton(
            onPressed: () async {
              /// BIKIN POST REQUEST
              final post = await http.post(
                Uri.parse('https://reqres.in/api/users'),
                body: {"name": nameC.text, "job": jobC.text},
              );

              /// BIKIN JSONDECODE
              Map<String, dynamic> data =
                  jsonDecode(post.body) as Map<String, dynamic>;

              /// UNTUK MENANGKAP HASIL RESPONSE
              setState(() {
                hasilResponse = 'Nama: ${data['name']} \n Job: ${data['job']}';
              });
            },
            child: Text('Submit'),
          ),
          Divider(color: Colors.black),
          SizedBox(height: 15),
          Text(hasilResponse),
        ],
      ),
    );
  }
}
