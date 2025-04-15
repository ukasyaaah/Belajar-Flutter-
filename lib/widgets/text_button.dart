import 'package:flutter/material.dart';

class TextButtonn extends StatelessWidget {
  final String nav;
  final String teks;
  final Color color;
  const TextButtonn({
    super.key,
    required this.nav,
    required this.teks,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      ),
      onPressed: () {
        Navigator.of(context).pushNamed(nav);
      },
      child: Text(
        teks,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
    );
  }
}
