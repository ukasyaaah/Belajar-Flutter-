import 'package:flutter/material.dart';

class RowMainAxis extends StatelessWidget {
  const RowMainAxis({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          backgroundColor: Colors.blueGrey,
          title: Text('Main & Cross Axis'),
        ),

        body: ListView(
          children: [
            Center(
              child: Text(
                'Ini Cross & Main Axis Column',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(height: 50, width: 50, color: Colors.redAccent),
                Container(height: 100, width: 100, color: Colors.amberAccent),
                Container(
                  height: 150,
                  width: 150,
                  color: const Color.fromARGB(255, 160, 253, 52),
                ),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  'Ini Alignment Widget Stack (bottomStart)',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.bottomStart,
              children: [
                Container(height: 200, width: 200, color: Colors.redAccent),
                Container(height: 150, width: 150, color: Colors.amberAccent),
                Container(height: 100, width: 100, color: Colors.greenAccent),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
