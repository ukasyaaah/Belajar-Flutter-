import 'package:flutter/material.dart';

class InvisibleWidget extends StatelessWidget {
  const InvisibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,
          title: Text('Invisible Widget'),
          titleTextStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        body: ListView(
          children: [
            SizedBox(height: 20),
            Container(
              child: Center(
                child: Text(
                  'Ini Adalah Widget Row',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                ),
              ),
            ),
            // Widget Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.red,
                  child: Center(
                    child: Text(
                      'Ini Row Widget',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.yellow,

                  child: Center(
                    child: Text(
                      'Ini Row Widget',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.lightGreenAccent,
                  child: Center(
                    child: Text(
                      'Ini Row Widget',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20),
            Container(
              child: Center(
                child: Text(
                  'Ini Adalah Widget column',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                ),
              ),
            ),
            // Widget Column
            Column(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.orange,
                  child: Center(
                    child: Text(
                      'Ini Column Widget',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.deepOrange,
                  child: Center(
                    child: Text(
                      'Ini Column Widget',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.lightBlue,
                  child: Center(
                    child: Text(
                      'Ini Column Widget',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  color: Colors.lightGreenAccent,
                  child: Center(
                    child: Text(
                      'Ini Stack Widget',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 110,
                  height: 110,
                  color: Colors.lightGreenAccent,
                  child: Center(
                    child: Text(
                      'Ini Stack Widget',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Container(
                  width: 90,
                  height: 120,
                  color: Colors.lightGreenAccent,
                  child: Center(
                    child: Text(
                      'Ini Stack Widget',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
