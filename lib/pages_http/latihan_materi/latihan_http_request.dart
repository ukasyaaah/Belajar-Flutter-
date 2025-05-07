import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LatihanHttpRequest extends StatefulWidget {
  const LatihanHttpRequest({super.key});

  @override
  State<LatihanHttpRequest> createState() => _LatihanHttpRequestState();
}

class _LatihanHttpRequestState extends State<LatihanHttpRequest> {
  Future fufufafa() async {
    final response = await http.get(
      Uri.parse('https://fufufafapi.vanirvan.my.id/api/'),
    );

    final data = jsonDecode(response.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: FutureBuilder(
        future: fufufafa(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          } else {
            final quote = snapshot.data!;
            return ListView.builder(
              itemCount: quote.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Card(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.network('${quote[index]['image_url']}'),
                            SizedBox(height: 10,),
                            Text('${quote[index]['content']}')],
                        ),
                      ),
                    ],
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
