import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Ftbuilder extends StatefulWidget {
  const Ftbuilder({super.key});

  @override
  State<Ftbuilder> createState() => _FtbuilderState();
}

class _FtbuilderState extends State<Ftbuilder> {
  List<Map<String, dynamic>> allData = [];
  Future getData() async {
    try {
      var response = await http.get(Uri.parse('https://reqres.in/api/users'));

      List data = (jsonDecode(response.body) as Map<String, dynamic>)['data'];
      data.forEach((element) {
        allData.add(element);
      });
    } catch (e) {
      Text('Error : $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),

      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.black,
                backgroundColor: Colors.lightGreenAccent,
              ),
            );
          } else {
            return ListView.builder(
              itemCount: allData.length,
              itemBuilder:
                  (context, index) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        '${allData[index]['avatar']}',
                      ),
                    ),
                    title: Text(
                      '${allData[index]['first_name']} ${allData[index]['last_name']}',
                    ),
                    subtitle: Text('${allData[index]['email']}'),
                  ),
            );
          }
        },
      ),
    );
  }
}
