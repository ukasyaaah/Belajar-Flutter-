import 'package:flutter/material.dart';

class DropdownWarna extends StatelessWidget {
  const DropdownWarna({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Warna());
  }
}

class Warna extends StatefulWidget {
  const Warna({super.key});

  @override
  State<Warna> createState() => _WarnaState();
}

class _WarnaState extends State<Warna> {
  String? selectedWarna;

  List<String> warna = ['Merah', 'Kuning', 'Hijau', 'Biru', 'Ungu'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DropdownButton(
          hint: Text('Pilih Warna'),

          value: selectedWarna,

          onChanged:
              (value) => setState(() {
                selectedWarna = value;
                print('Dia Milih Warna $value');
              }),

          items:
              warna
                  .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
        ),
      ),
    );
  }
}
