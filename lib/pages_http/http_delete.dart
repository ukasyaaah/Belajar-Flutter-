import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpDelete extends StatefulWidget {
  const HttpDelete({super.key});

  @override
  State<HttpDelete> createState() => _HttpDeleteState();
}

class _HttpDeleteState extends State<HttpDelete> {
  String textData = 'Belum ada data';

  Future<void> addData() async {
    final myResponse = await http.get(
      Uri.parse('https://reqres.in/api/users/2'),
    );
    final dhata = jsonDecode(myResponse.body);

    setState(() {
      textData =
          '${dhata['data']['first_name']} ${dhata['data']['last_name']} ${dhata['data']['email']}';
    });
  }

  Future<void> deleteData() async {
    final responnsse = await http.delete(
      Uri.parse('https://reqres.in/api/users/2'),
    );

    if (responnsse.statusCode == 204) {
      setState(() {
        textData = 'Data udah dihapus';
      });
    } else {
      setState(() {
        textData = 'Error: ${responnsse.statusCode}, data gagal dihapus';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: ()  {
            addData();
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Text(textData),
          SizedBox(height: 35),
          TextButton(
            onPressed: ()  {
               deleteData();
            },
            child: Text('DELETE'),
          ),
        ],
      ),
    );
  }
}
