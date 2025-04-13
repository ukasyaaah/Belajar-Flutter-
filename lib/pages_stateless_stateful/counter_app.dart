import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int angka = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$angka',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      angka++;
                      setState(() {});
                    },
                    label: Icon(Icons.add),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      angka--;
                      setState(() {});
                    },
                    label: Icon(Icons.emoji_symbols),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
