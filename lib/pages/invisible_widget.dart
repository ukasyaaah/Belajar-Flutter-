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
            Column(
              children: [
                Center(
                  child: Text(
                    'Ini Adalah Widget column',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                  ),
                ),
              ],
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

            Container(
              child: Center(
                child: Text(
                  'Ini Adalah Widget Stack (Menumpuk)',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                ),
              ),
            ),
            // Widget Stack
            Center(
              child: Stack(
                children: [
                  Container(
                    width: 250,
                    height: 250,
                    color: const Color.fromARGB(255, 66, 14, 210),
                    child: Center(
                      child: Text(
                        'Ini Stack Widget',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 200,
                    color: const Color.fromARGB(255, 111, 121, 231),
                    child: Center(
                      child: Text(
                        'Ini Stack Widget',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: const Color.fromARGB(255, 238, 155, 183),
                    child: Center(
                      child: Text(
                        'Ini Stack Widget',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Center(
                child: Text(
                  'Ini Adalah Widget Single Child Scroll View',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Center(
                child: Row(
                  children: [
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.teal,
                      child: Center(child: Text('Scroll View Widget')),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.deepOrange,
                      child: Center(child: Text('Scroll View Widget')),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.orange,
                      child: Center(child: Text('Scroll View Widget')),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.brown,
                      child: Center(child: Text('Scroll View Widget')),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.blueGrey,
                      child: Center(child: Text('Scroll View Widget')),
                    ),
                    Container(
                      width: 120,
                      height: 120,
                      color: Colors.yellow,
                      child: Center(child: Text('Scroll View Widget')),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Center(
                child: Text(
                  'Widget ListView',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              child: Center(
                child: Text(
                  'Halaman ini bisa discroll, karena menggunakan ListView',
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
