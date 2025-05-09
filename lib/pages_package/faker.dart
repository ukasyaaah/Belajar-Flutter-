import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class FakerPage extends StatelessWidget {
  var faker = new Faker();

  @override
  Widget build(BuildContext context) {
    print(faker.animal.name);
    return Scaffold(
      appBar: AppBar(title: Text('Faker')),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              backgroundImage: NetworkImage('https://picsum.photos/id/${200 + index}/100'),
            ),
            title: Text('${faker.person.name()}'),
            subtitle: Text('${faker.internet.email()}'),
          );
        },
      ),
    );
  }
}
