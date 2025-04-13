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
                  width: 100,
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
                    width: 100,
                    height: 100,
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
            // WIDGET LISTVIEW
            Container(
              child: Center(
                child: Text(
                  'Widget ListView',
                  style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                ),
              ),
            ),

            // LISTVIEW AXIS HORIZONTAL
            SizedBox(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Halaman ini bisa discroll, karena menggunakan ListView, ini dipake kalo gamau ada pembungkus widget lagi (Single Child Scroll View)',
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 300,
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.deepOrange,
                    child: Center(child: Text('ListView Horizontal Widget')),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.amber,
                    child: Center(child: Text('ListView Horizontal Widget')),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.lightGreen,
                    child: Center(child: Text('ListView Horizontal Widget')),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.lightBlue,
                    child: Center(child: Text('ListView Horizontal Widget')),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.deepPurpleAccent,
                    child: Center(child: Text('ListView Horizontal Widget')),
                  ),
                ],
              ),
            ),

            // LISTVIEW AXIS VERTICAL
            SizedBox(
              height: 40,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Dibawah ini adalah ListView dengan Scroll Direction Vertical',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                  ),
                ),
              ),
            ),

            SizedBox(
              width: 100,
              height: 100,
              child: ListView(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.greenAccent,
                    child: Center(child: Text('ListView Vertical Widget')),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.indigoAccent,
                    child: Center(child: Text('ListView Vertical Widget')),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.limeAccent,
                    child: Center(child: Text('ListView Vertical Widget')),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.deepOrangeAccent,
                    child: Center(child: Text('ListView Vertical Widget')),
                  ),
                  Container(
                    width: 120,
                    height: 120,
                    color: Colors.lightGreenAccent,
                    child: Center(child: Text('ListView Vertical Widget')),
                  ),
                ],
              ),
            ),

            // GRIDVIEW
            SizedBox(height: 20),
            // GridView : FixedCrossAxisCount
            Column(
              children: [
                Center(
                  child: Text(
                    'Ini Adalah Widget GridView dengan FixedCrossAxisCount ( 4 )',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 100,
              height: 250,
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 12, // Jarak Baris
                  crossAxisSpacing: 12, // Jarak Kolom
                  childAspectRatio: 3 / 1, // Custom Aspect ratio pada item
                ),
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    child: Center(child: Text('Scroll View Widget')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.pink,
                    child: Center(child: Text('Scroll View Widget')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.lime,
                    child: Center(child: Text('Scroll View Widget')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    child: Center(child: Text('Scroll View Widget')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.pink,
                    child: Center(child: Text('Scroll View Widget')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.lime,
                    child: Center(child: Text('Scroll View Widget')),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            Column(
              children: [
                Center(
                  child: Text(
                    'Ini Adalah Widget GridView dengan maxCrossAxisExtent',
                    style: TextStyle(fontWeight: FontWeight.w800, fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 100,
              height: 250,
              child: GridView(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 100,
                  crossAxisSpacing: 12, // Menentukan jarak tiap kolom
                ),
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.yellow,
                    child: Center(child: Text('Scroll View Widget')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey,
                    child: Center(child: Text('Scroll View Widget')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.black38,
                    child: Center(child: Text('Scroll View Widget')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.cyan,
                    child: Center(child: Text('Scroll View Widget')),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.amber,
                    child: Center(child: Text('Scroll View Widget')),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
