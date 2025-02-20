import 'package:flutter/material.dart';

class DasarWidget extends StatelessWidget {
  const DasarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 21, 233, 50),
          title: Text('Widget Dasar'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                // Widget Container
                child: Container(
                  width: 200,
                  height: 200,
                  color: const Color.fromARGB(97, 226, 12, 12),
                  child: Center(child: Text('Ini Adalah Container')),
                ),
              ),

              // Widget Text
              Text('Ini Adalah widget Text()'),

              // Widget Logo Flutter
              FlutterLogo(size: 100),

              //ElevatedButton Widget
              ElevatedButton(
                onPressed: () {},
                child: Text('Ini Widget Button'),
              ),

              // Widget Icon
              Icon(Icons.android),

             // WIDGET IMAGES
              Image(
                image:
                // 1. AssetImages -> gambar dari direktori
                AssetImage("assets/images/ima.jpg"),
              ),
              Image(
                image:
                // 2. NetworkImage 
                //  -> gambar dari URL
                //  -> Aplikasi butuh koneksi internet
                NetworkImage("https://ukasyaaah.vercel.app/src/img/E%20Wallet.png"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
