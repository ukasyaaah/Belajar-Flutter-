import 'dart:math';

import 'package:avatar_glow/avatar_glow.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:faker/faker.dart' as my;
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class FakerPage extends StatefulWidget {
  const FakerPage({super.key});

  @override
  State<FakerPage> createState() => _FakerPageState();
}

class _FakerPageState extends State<FakerPage> {
  /// Faker
  var faker = my.Faker();
  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    /// Set format tanggal ke indonesia
    initializeDateFormatting('id_ID', null);

    List<Widget> widget = [
      ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: AvatarGlow(
              glowRadiusFactor: 0.2,
              glowColor: Color.fromARGB(
                255,
                index + Random().nextInt(220),
                index + Random().nextInt(230),
                index + Random().nextInt(210),
              ),
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                backgroundImage: NetworkImage(
                  'https://picsum.photos/id/${200 + index}/100',
                ),
              ),
            ),
            title: Text(faker.person.name()),
            subtitle: Text(
              DateFormat.yMMMEd('id_ID').add_Hm().format(DateTime.now()),
            ),
          );
        },
      ),
      Center(child: Text('Page 2')),
      Center(child: Text('Page 3')),
    ];

    return Scaffold(
      appBar: AppBar(title: Text('Faker')),
      body: widget[currentIndex],
      bottomNavigationBar: ConvexAppBar(
        shadowColor: Color(0xff2d2e23),
        style: TabStyle.reactCircle,
        curveSize: 100,
        backgroundColor: Color(0xff4b4d39),
        color: Color(0xff2d2e23),
        activeColor: Color(0xfffffff4),
        initialActiveIndex: 1,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.add),
          TabItem(icon: Icons.settings),
        ],
      ),
    );
  }
}
