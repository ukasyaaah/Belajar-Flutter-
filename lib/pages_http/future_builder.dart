import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class FutureBuilderPage extends StatefulWidget {
  const FutureBuilderPage({super.key});

  @override
  State<FutureBuilderPage> createState() => _FutureBuilderPageState();
}

class _FutureBuilderPageState extends State<FutureBuilderPage> {
  /// Future Function
  Future<List<Map<String, dynamic>>> getAllUser() async {
    try {
      final response = await http.get(
        Uri.parse('https://reqres.in/api/users'),
      );

      if (response.statusCode == 200) {
        List data = (jsonDecode(response.body) as Map<String, dynamic>)['data'];

        return List<Map<String, dynamic>>.from(data);
      } else {
        throw Exception('Gagal Mengambil Data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        backgroundColor: Colors.lightGreen,
      ),
      body: FutureBuilder<List<Map<String, dynamic>>>(
        future: getAllUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Data ga ditemukan'));
          }

          List<Map<String, dynamic>> users = snapshot.data!;
          return ListView.builder(
            itemCount: users.length,
            itemBuilder:
                (context, index) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('${users[index]['avatar']}'),
                  ),
                  title: Text('${users[index]['first_name']}'),
                  subtitle: Text('${users[index]['email']}'),
                ),
          );
        },
      ),
    );
  }
}
