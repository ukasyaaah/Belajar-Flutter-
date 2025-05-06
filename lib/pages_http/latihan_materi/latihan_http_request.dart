import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LatihanHttpRequest extends StatefulWidget {
  const LatihanHttpRequest({super.key});

  @override
  State<LatihanHttpRequest> createState() => _LatihanHttpRequestState();
}

class _LatihanHttpRequestState extends State<LatihanHttpRequest> {

  Future getImage() async{
    final response = await http.get(Uri.parse('https://mymood.mymood.my.id/api/avatars'));

final data = jsonDecode(response.body);
return data;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future:getImage() ,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
if(snapshot.connectionState == ConnectionState.waiting){
  return Center(child: CircularProgressIndicator(),);
}else if(snapshot.hasError){
    return Center(child: Text('Error : ${snapshot.error}'),);
}else{
final data = snapshot.data!;
return GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,), 
  itemBuilder:(context, index) {
    final dhata = data[index];
    return Container(
                  height: 2000,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        dhata['avatar_path'],
                        height: 150,
                        width: 150,
                      ),
                    ],
                  ),
                );
},);
}
        },
      ),
    );
  }
}