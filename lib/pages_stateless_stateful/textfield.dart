import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: TextField(

              obscureText: true,
              keyboardType: TextInputType.visiblePassword,
              cursorColor: Colors.amber,
              textDirection: TextDirection.ltr,
              autocorrect: true,
            ),
          ),
        ),
      ),
    );
  }
}
