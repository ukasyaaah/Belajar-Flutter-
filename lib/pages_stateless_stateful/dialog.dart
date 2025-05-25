import 'package:flutter/material.dart';

class DialogPage extends StatelessWidget {
  const DialogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Dialog Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder:
                      (context) => AlertDialog(
                        title: Text('Contoh Dialog'),
                        content: Text(
                          'Hallo Ukhasyah Kamu lagi belajar dialog',
                        ),
                        contentTextStyle: TextStyle(fontSize: 16),
                        titleTextStyle: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),
                        actions: [
                          ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.lightGreen,
                              ),
                            ),
                            child: Text(
                              'OKEI',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              /// popUntil utk kembali ke home tanpa menutup halaman diatasnya
                              Navigator.popUntil(
                                context,
                                ModalRoute.withName('/home'),
                              );
                            },
                            style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                Colors.red,
                              ),
                            ),
                            child: Text(
                              'Parahh',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                );
              },
              child: Text('Pencet'),
            ),
          ],
        ),
      ),
    );
  }
}
