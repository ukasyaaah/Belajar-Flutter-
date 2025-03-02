import 'package:flutter/material.dart';

class BottomNavbar extends StatelessWidget {
  const BottomNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Testi());
  }
}

class Testi extends StatefulWidget {
  const Testi({super.key});

  @override
  State<Testi> createState() => _TestiState();
}

class _TestiState extends State<Testi> {
  int selectedIndex = 0;

  List showPage = [
    Center(
      child: Text('Home', style: TextStyle(color: Colors.white, fontSize: 24)),
    ),
    Center(
      child: Text('Him', style: TextStyle(color: Colors.white, fontSize: 24)),
    ),
    Center(
      child: Text('Hum', style: TextStyle(color: Colors.white, fontSize: 24)),
    ),
    Center(
      child: Text('Ham', style: TextStyle(color: Colors.white, fontSize: 24)),
    ),
  ];
  @override
  void initState() {
    selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ukhasyah\'s WhatsApp'),
        backgroundColor: Colors.teal,
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 34, 44, 48),

      // Menampilkan Page sesuai Index / Tab
      body: showPage[selectedIndex],

     
      bottomNavigationBar: BottomNavigationBar(
        // Biar ukuran label ga berubah
        unselectedFontSize: 14,
        selectedFontSize: 14,

        // Index awal item
        currentIndex: selectedIndex,

        // Biar posisinya tetep (ga geser), alternatif .shifting
        type: BottomNavigationBarType.fixed,

        // Warna Background Navbar
        backgroundColor: Colors.teal,

        // Warna kalo item dipencet
        selectedItemColor: Colors.white,

        // Untuk merubah page saat tombol di pencet
        onTap:
            (value) => setState(() {
              selectedIndex = value;
            }),

        items: [
          /// LABEL GABOLEH NULL
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(
            icon: Icon(Icons.stars_rounded),
            label: 'Story',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt),
            label: 'Community',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        ],
      ),
   
  
    floatingActionButton: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(color: Colors.teal, shape: BoxShape.circle),
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.person_add_alt_sharp),
          color: Colors.white,
        ),
      ),

    );
  }
}
