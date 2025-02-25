import 'package:flutter/material.dart';

class KotakWarna extends StatelessWidget {
  const KotakWarna({super.key, required this.teks, required this.warna});

  final String teks;
  final Color warna;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      color: warna,
      child: Center(child: Text(teks)),
    );
  }
}