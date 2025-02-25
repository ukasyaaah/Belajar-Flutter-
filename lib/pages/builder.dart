import 'dart:math';

import 'package:flutter/material.dart';

class BuilderPage extends StatelessWidget {
  const BuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                
                itemBuilder:
                    (context, index) => Container(
                      width: 100,
                      height: 100,
                      color: Color.fromARGB(
                        255,
                        Random().nextInt(256),
                        Random().nextInt(256),
                        Random().nextInt(256),
                      ),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
