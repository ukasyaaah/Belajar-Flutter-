

import 'package:belajar_flutter/pages_package/dropdown_search.dart';
import 'package:belajar_flutter/pages_package/faker.dart';
import 'package:belajar_flutter/widgets/text_button.dart';
import 'package:flutter/material.dart';

class PagesPackage extends StatelessWidget {
  const PagesPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/faker': (context) =>  FakerPage(),
        '/drop': (context) =>  DropdownSearch(),
     
      },

      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back, color: Colors.black),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButtonn(
                  nav: '/faker',
                  teks: 'Faker, intl & Avatar Glow',
                  color: Colors.red,
                ),
                SizedBox(height: 20),
                TextButtonn(
                  nav: '/drop',
                  teks: 'Dropdown Search',
                  color: Colors.yellow,
                ),
                SizedBox(height: 20),
          
                 
              ],
            ),
          ),
        ),
      ),
    );
  }
}
