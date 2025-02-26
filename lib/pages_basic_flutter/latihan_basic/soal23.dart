import 'package:flutter/material.dart';

class Soal23 extends StatelessWidget {
  const Soal23({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  ClipOval(
                    child: Container(
                      width: 260,
                      height: 260,
                      color: Colors.lightGreenAccent,
                    ),
                  ),
                  Container(
                    width: 250,
                    height: 250,
                    decoration: BoxDecoration(
                      color: Colors.grey,

                      border: Border.all(color: Colors.white, width: 7),
                      borderRadius: BorderRadius.circular(250 / 2),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/ima.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 24),
              Text(
                'Hello World',

                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 27,
                  fontWeight: FontWeight.w900,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
