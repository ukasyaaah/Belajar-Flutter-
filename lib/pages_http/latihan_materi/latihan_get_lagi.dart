import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class Userr extends StatefulWidget {
  const Userr({super.key});

  @override
  State<Userr> createState() => _UserrState();
}

class _UserrState extends State<Userr> {
  String id = '';
  String email = '';
  String name = '';
  String teks = '';

  Future<void> getAccount() async {
    final response = await myhttp.get(
      Uri.parse('https://reqres.in/api/users/7'),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      setState(() {
        id = data['data']['id'].toString();
        email = data['data']['email'].toString();
        name =
            '${data['data']['first_name'].toString()} ${data['data']['last_name'].toString()}';
        teks = data['support']['text'].toString();
      });
    } else {
      showDialog(
        context: context,
        builder:
            (context) =>
                AlertDialog(title: Text('Error: ${response.statusCode}')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(id, style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text(email, style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text(name, style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            Text(
              teks,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 15),

            TextButton(
              onPressed: () async {
                await getAccount();
              },
              child: Text('Get Account'),
            ),
          ],
        ),
      ),
    );
  }
}
