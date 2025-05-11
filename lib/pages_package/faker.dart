import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class FakerPage extends StatelessWidget {
  var faker = Faker();

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('id_ID', null);

    return Scaffold(
      appBar: AppBar(title: Text('Faker')),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              backgroundImage: NetworkImage(
                'https://picsum.photos/id/${200 + index}/100',
              ),
            ),
            title: Text('${faker.person.name()}'),
            subtitle: Text(
              '${DateFormat.yMMMEd('id_ID').add_Hm().format(DateTime.now())}',
            ),
          );
        },
      ),
    );
  }
}
