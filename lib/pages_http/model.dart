import 'dart:math';

import 'package:belajar_flutter/models/product.dart';
import 'package:faker/faker.dart' as my;
import 'package:flutter/material.dart';

class Model extends StatelessWidget {
  final my.Faker faker = my.Faker();

  Model({super.key});
  @override
  Widget build(BuildContext context) {
    List<Product> dummy = List.generate(85, (index) {
      return Product(
        judul: faker.food.restaurant(),
        img: 'https://picsum.photos/id/$index/200',
        deskripsi: faker.lorem.sentence(),
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
              child: Image.network(dummy[index].img),
            ),

        itemCount: dummy.length,
      ),
    );
  }
}
