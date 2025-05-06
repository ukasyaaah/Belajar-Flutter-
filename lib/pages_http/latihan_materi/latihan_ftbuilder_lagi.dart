import 'dart:convert';

import 'package:belajar_flutter/models/meals.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LatihanFtbuilderLagi extends StatefulWidget {
  const LatihanFtbuilderLagi({super.key});

  @override
  State<LatihanFtbuilderLagi> createState() => _LatihanFtbuilderLagiState();
}

class _LatihanFtbuilderLagiState extends State<LatihanFtbuilderLagi> {
  Future<List<Meals>> getMeals() async {
    var response = await http.get(
      Uri.parse('https://www.themealdb.com/api/json/v1/1/filter.php?c=Seafood'),
    );

    if (response.statusCode == 200) {
      List data = (jsonDecode(response.body) as Map<String, dynamic>)['meals'];
      return data.map((json) => Meals.fromJson(json)).toList();
    } else {
      throw Exception('Fail Load Data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meals')),
      body: FutureBuilder(
        future: getMeals(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                color: Colors.yellow,
                backgroundColor: Colors.yellow,
              ),
            );
          } else if (snapshot.hasError) {
            return Center(child: Text('Oopps!, Error : ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Data Kosong'));
          } else {
            List<Meals> allData = snapshot.data!;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
              ),
              itemCount: allData.length,
              itemBuilder: (context, index) {
                final dhata = allData[index];
                return Container(
                  height: 2000,
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network(
                        dhata.strMealThumb,
                        height: 150,
                        width: 150,
                      ),

                      Text(dhata.strMeal),
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
