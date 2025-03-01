import 'package:flutter/material.dart';


class Soal21 extends StatelessWidget {
  const Soal21({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                color: const Color.fromARGB(255, 2, 72, 39),
              ),
              Container(
                width: 225,
                height: 225,
                color: const Color.fromARGB(255, 228, 88, 12),
              ),
              Container(
                width: 200,
                height: 200,
                color: const Color.fromARGB(255, 129, 10, 208),
              ),
              Container(
                width: 175,
                height: 175,
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
      ),
    );
  }
}
