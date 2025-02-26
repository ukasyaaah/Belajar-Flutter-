import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SoalPlus extends StatelessWidget {
  const SoalPlus({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text('Latihan Flutter 12'),
          titleTextStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          leading: FlutterLogo(),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu_open))],
        ),
        body: GridView.builder(
          itemCount: 30,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              return Container(
                width: 100,
                height: 100,
                color: Colors.blueAccent,
                child: Center(
                  child: Text('Hello', style: TextStyle(color: Colors.white)),
                ),
              );
            } else {
              return Container(
                width: 100,
                height: 100,
                color: Colors.yellowAccent,
                child: Center(
                  child: Text('Hello', style: TextStyle(color: Colors.white)),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
