import 'package:flutter/material.dart';

class Soal20 extends StatelessWidget {
  const Soal20({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              width: 180,
              height: 170,
              color: const Color.fromARGB(255, 2, 72, 39),
            ),
            Container(
              width: 175,
              height: 165,
              color: const Color.fromARGB(255, 228, 88, 12),
            ),
            Container(
              width: 160,
              height: 160,
              color: const Color.fromARGB(255, 129, 10, 208),
            ),
            Container(
              width: 155,
              height: 155,
              color: const Color.fromARGB(255, 241, 251, 151),
            ),
            Container(
              width: 150,
              height: 150,
              color: const Color.fromARGB(255, 36, 54, 121),
            ),
          ],
        ),
      ),
    );
  }
}
