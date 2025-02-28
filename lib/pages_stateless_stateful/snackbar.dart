import 'package:flutter/material.dart';

class Snackbar extends StatelessWidget {
  const Snackbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeSnack());
  }
}

class HomeSnack extends StatelessWidget {
  const HomeSnack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  behavior: SnackBarBehavior.floating,
                  // duration: Duration(milliseconds: 500),
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  backgroundColor: Colors.amber,
                  showCloseIcon: true,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  content: Text('Data berhasil disimpan'),
                ),
              );
            },
            child: Text('Test'),
          ),
        ),
      ),
    );
  }
}
