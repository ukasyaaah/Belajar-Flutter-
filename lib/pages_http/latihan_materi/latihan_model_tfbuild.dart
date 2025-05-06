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
  @override
  Widget build(BuildContext context) {
    Future<List<User>> getUser() async {
      final response = await http.get(
        Uri.parse('https://reqres.in/api/users?page=1'),
      );

      if (response.statusCode == 200) {
        List data = (jsonDecode(response.body) as Map<String, dynamic>)['data'];
        return data.map((json) => User.fromJson(json)).toList();
      } else {
        throw Exception('Gagal Load Data');
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Model W FT Build'),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: FutureBuilder<List<User>>(
        future: getUser(),
        builder: (context, snapshot) {
          /// Kalo loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());

          /// Kalo Error
          } else if (snapshot.hasError) {
            return Center(child: Text('Error : ${snapshot.error}'));

          /// Kalo data kosong
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Data Kosong'));
          } else {
            List<User> allData = snapshot.data!;
          /// Kalo data kosong
            if(allData.length == 0){
              return Text('Gada data');
            }
            return ListView.builder(
              itemCount: allData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.deepPurpleAccent,
                    backgroundImage: NetworkImage('${allData[index].avatar}'),
                  ),
                  title: Text(
                    '${allData[index].first_name} ${allData[index].last_name}',
                  ),
                  subtitle: Text('${allData[index].email}'),
                );
              },
            );
          }
        },
      ),
    );
  }
}
