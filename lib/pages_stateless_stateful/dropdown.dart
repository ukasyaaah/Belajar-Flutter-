import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  List<Map<String, String>> data = [
    {'nama': 'Ukhasyah', 'jurusan': 'Programmer'},
    {'nama': 'Zufar', 'jurusan': 'Designer'},
    {'nama': 'Hani', 'jurusan': 'Engineer'},
  ];

  String? selected;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('DropDown')),
        body: Center(
          child: Padding(
            padding: EdgeInsets.all(30),
            child: DropdownButton(
              icon: Icon(Icons.people),

              /// Radius menu Dropdown
              borderRadius: BorderRadius.circular(12),

              /// Lebar menu
              menuWidth: 120,

              /// Jika belum memilih tampilkan hint
              hint: Text('Mahasiswa'),

              /// Biar dropdown ga kepotong
              isExpanded: true,

              /// Kasih Value biar terlihat nilai yg dipilih
              value: selected,

              /// Aksi ketika user milih item
              onChanged:
                  (value) => setState(() {
                    selected = value;
                    print(value);
                  }),

              items:
                  data
                      .map(
                        (e) => DropdownMenuItem(
                          /// Teks yang akan muncul pada pilihan dropdown
                          child: Text('${e['nama']}'),

                          /// Data yang disimpan saat user memilih item
                          value:
                              'Nama nya : ${e['nama']}, Jurusan : ${e['jurusan']}',
                        ),
                      )
                      .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
