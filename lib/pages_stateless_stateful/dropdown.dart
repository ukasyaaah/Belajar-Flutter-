import 'package:flutter/material.dart';

class DropdownPage extends StatelessWidget {
  final List dhata = [
    {'nama': 'Ukhasyah', 'NIM': '890123'},
    {'nama': 'Zufar', 'NIM': '234678'},
    {'nama': 'Hani', 'NIM': '123098'},
    {'nama': 'Fauzan', 'NIM': '932093'},
    {'nama': 'Khaki', 'NIM': '2347432'},
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('DropDown')),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: DropdownButton(
              items:
                  dhata
                      .map(
                        (e) => DropdownMenuItem(
                          child: Text('${e['nama']}'),
                          value: 'Nama nya ${e['nama']}, NIM nya ${e['NIM']}',
                        ),
                      )
                      .toList(),
              onChanged: (value) {
                print(value);
              },
            ),
          ),
        ),
      ),
    );
  }
}
