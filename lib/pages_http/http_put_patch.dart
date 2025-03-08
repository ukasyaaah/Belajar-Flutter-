import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPutPatch extends StatefulWidget {
  const HttpPutPatch({super.key});

  @override
  State<HttpPutPatch> createState() => _HttpPutState();
}

class _HttpPutState extends State<HttpPutPatch> {
  TextEditingController emailC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  String hasilResponse = 'Datanya kosong lee';

  Future<void> putData() async {
    final myResponse = await http.patch(
      Uri.parse('https://reqres.in/api/users/4'),
      body: {'email': emailC.text, 'job': jobC.text},
    );

    if (myResponse.statusCode == 200) {
      Map<String, dynamic> data =
          jsonDecode(myResponse.body) as Map<String, dynamic>;

      setState(() {
        hasilResponse = 'Email: ${data['email']}\n Job: ${data['job']}';

        showDialog(
          context: context,
          builder:
              (context) =>
                  AlertDialog(title: Text('Data Kamu Berhasil Diubah')),
        );
      });
    } else {
      hasilResponse = 'Gagal Update Data';

      showDialog(
        context: context,
        builder:
            (context) => AlertDialog(title: Text('Data Kamu GAGAL Diubah')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              controller: emailC,
              autocorrect: false,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: jobC,
              autocorrect: false,
              textInputAction: TextInputAction.send,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Job',
              ),
            ),
            SizedBox(height: 15),
            TextButton(
              onPressed: () async {
                await putData();
              },
              child: Text('Edit'),
            ),
            Divider(),
            Text(hasilResponse),
          ],
        ),
      ),
    );
  }
}
