import 'package:flutter/material.dart';

class Soal22 extends StatelessWidget {
  const Soal22({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ClipOval(
            child: Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                color: Colors.redAccent,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/ima.jpg'),
                ),
                borderRadius: BorderRadius.circular(250 / 2),
                border: Border.all(color: Colors.blue.shade900, width: 10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
