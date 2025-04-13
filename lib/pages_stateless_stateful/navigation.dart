import 'package:belajar_flutter/pages_stateless_stateful/drawer.dart';
import 'package:flutter/material.dart';

class Nave extends StatelessWidget {
  const Nave({super.key});

  /// Kalo Push itu nambah / numpuk page.
  /// Kalo Pop buang page (biasanya untuk kembali)

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Navet());
  }
}

class Navet extends StatelessWidget {
  const Navet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HOme'), leading: SizedBox()),
      body: Center(
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.lime,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => DrawerPage()));
          },
          child: Text('Next Page', style: TextStyle(color: Colors.black)),
        ),
      ),
    );
  }
}
