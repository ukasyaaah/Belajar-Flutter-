import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class LatihanPost extends StatefulWidget {
  const LatihanPost({super.key});

  @override
  State<LatihanPost> createState() => _LatihanPostState();
}

class _LatihanPostState extends State<LatihanPost> {
  TextEditingController emailC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  String hasilResponse = 'Data kosong';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            TextField(
              controller: emailC,
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: jobC,
              textInputAction: TextInputAction.send,
              keyboardType: TextInputType.text,
              autocorrect: false,
              decoration: InputDecoration(
                labelText: 'Job',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextButton(
              onPressed: () async {
                final hisResponse = await myhttp.post(
                  Uri.parse('https://reqres.in/api/users'),
                  body: {'email': emailC.text, 'job': jobC.text},
                );
                final data = jsonDecode(hisResponse.body);

                setState(() {
                  hasilResponse =
                      'Email: ${data['email']} \n Job: ${data['job']}';
                });
              },
              child: Text('Kirim'),
            ),
            Divider(),
            Text(hasilResponse),
          ],
        ),
      ),
    );
  }
}
