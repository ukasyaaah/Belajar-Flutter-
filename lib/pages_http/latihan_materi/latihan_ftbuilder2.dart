import 'dart:convert';

import 'package:belajar_flutter/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LatihanFtbuilder2 extends StatefulWidget {
  const LatihanFtbuilder2({super.key});

  @override
  State<LatihanFtbuilder2> createState() => _LatihanFtbuilder2State();
}

class _LatihanFtbuilder2State extends State<LatihanFtbuilder2> {
  Future<List<User>> getUser() async {
    final response = await http.get(
      Uri.parse('https://reqres.in/api/users?page=2'),
    );

    if (response.statusCode == 200) {
      List data = (jsonDecode(response.body) as Map<String, dynamic>)['data'];

      return data.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Gagal memuat data user');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text('FT Builder 2')),
      body: FutureBuilder<List<User>>(
        future: getUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(
              child: AlertDialog(
                content: Text('Oopss, Error : ${snapshot.error}'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('OK'),
                  ),
                ],
              ),
            );
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(
              child: AlertDialog(
                content: Text('Oopss, Data Kosong'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('OK'),
                  ),
                ],
              ),
            );
          }

          final users = snapshot.data!;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(user.avatar),
                ),
                title: Text('${user.first_name} ${user.last_name}'),
                subtitle: Text(user.email),
              );
            },
          );
        },
      ),
    );
  }
}
