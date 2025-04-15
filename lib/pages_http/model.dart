import 'dart:math';

import 'package:belajar_flutter/models/product.dart';
import 'package:faker/faker.dart' as my;
import 'package:flutter/material.dart';

class Model extends StatelessWidget {
  final my.Faker faker = my.Faker();
  @override
  Widget build(BuildContext context) {
    List<Product> dummy = List.generate(85, (index) {
      return Product(
        faker.food.restaurant(),
        'https://picsum.photos/id/$index/200',
        10000 + Random().nextInt(100000),
        faker.lorem.sentence(),
      );
    });
    return Scaffold(
      appBar: AppBar(title: Text('Belajar Model')),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder:
            (context, index) => GridTile(
              child: Image.network(dummy[index].imageURL),
              footer: GridTileBar(
                title: Text(
                  dummy[index].judul,
                  style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black,

                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  dummy[index].deskripsi,

                  style: TextStyle(
                    backgroundColor: Colors.white,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

        itemCount: dummy.length,
      ),
    );
  }
}
