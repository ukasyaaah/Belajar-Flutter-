import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LatihanFtbuilder extends StatefulWidget {
  const LatihanFtbuilder({super.key});

  @override
  State<LatihanFtbuilder> createState() => _LatihanFtbuilderState();
}

class _LatihanFtbuilderState extends State<LatihanFtbuilder> {
  /// Function Future utk  HTTP Request (get data)
  Future<List> getData() async {
    var response = await http.get(Uri.parse('https://reqres.in/api/users'));

    if (response.statusCode == 200) {
      List data = (jsonDecode(response.body) as Map<String, dynamic>)['data'];
      return data;
    } else {
      throw Exception('Gagal Load Data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Build 1', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          /// Kalo lagi nunggu ?
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.redAccent,
                backgroundColor: Colors.black,
              ),
            );

            /// Kalo Data Kosong
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Data Kosong'));

            /// Kalo Terjadi Error
          } else if (snapshot.hasError == true) {
            return Center(child: Text('Error : ${snapshot.error}'));

            /// Kalo Berhasil
          } else {
            List allData = snapshot.data!;
            return ListView.builder(
              itemCount: allData.length,
              itemBuilder:
                  (context, index) => ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.grey,
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
