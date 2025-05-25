import 'dart:convert';

import 'package:belajar_flutter/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LatihanModelTfbuild extends StatefulWidget {
  const LatihanModelTfbuild({super.key});

  @override
  State<LatihanModelTfbuild> createState() => _LatihanModelTfbuildState();
}

class _LatihanModelTfbuildState extends State<LatihanModelTfbuild> {
  Future<List<User>> getUser() async {
    final response = await http.get(
      Uri.parse('https://reqres.in/api/users?page=2'),
      headers: {'x-api-key': 'reqres-free-v1'},
    );
    // print('Status Code: ${response.statusCode}');
    // print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      List data = (jsonDecode(response.body) as Map<String, dynamic>)['data'];
      return data.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Fail load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppBarTheme().backgroundColor,
        title: Text('Model FT Builder'),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: getUser(),

        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Data Kosong'));
          } else {
            List<User> data = snapshot.data!;
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (context, index) {
                final user = data[index];
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(user.avatar),
                      ),
                      title: Text('${user.first_name} ${user.last_name}'),
                      subtitle: Text(user.email),
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
