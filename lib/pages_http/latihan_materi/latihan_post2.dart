import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as hishttp;

class LatihanPost2 extends StatefulWidget {
  const LatihanPost2({super.key});

  @override
  State<LatihanPost2> createState() => _LatihanPost2State();
}

class _LatihanPost2State extends State<LatihanPost2> {
  TextEditingController emailC = TextEditingController();
  TextEditingController jobC = TextEditingController();

  String hasilResponse = 'Data belum di isi';

  Future<void> postUser() async {
    final hisResponse = await hishttp.post(
      Uri.parse('https://reqres.in/api/users'),
      body: {'email': emailC.text, 'job': jobC.text},
    );

    final data = jsonDecode(hisResponse.body);

    setState(() {
      hasilResponse = 'Email: ${data['email']} \n Job: ${data['job']}';
    });
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
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: jobC,
              textInputAction: TextInputAction.send,
              keyboardType: TextInputType.text,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Job',
              ),
            ),
            SizedBox(height: 15),
            TextButton(
              onPressed: () async {
                await postUser();
              },
              child: Text('Submit'),
            ),
            Divider(),
            SizedBox(height: 10),
            Text(hasilResponse),
          ],
        ),
      ),
    );
  }
}
