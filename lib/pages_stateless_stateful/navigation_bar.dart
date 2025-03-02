import 'package:flutter/material.dart';

class NavigationBara extends StatelessWidget {
  const NavigationBara({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavaBara(),
      theme: ThemeData(
        navigationBarTheme: NavigationBarThemeData(
          iconTheme: WidgetStateProperty.resolveWith((syau) {
            if (syau.contains(WidgetState.selected)) {
              return IconThemeData(color: Colors.white);
            } else {
              return IconThemeData(color: Colors.grey);
            }
          }),

          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              );
            } else {
              return TextStyle(color: Colors.grey);
            }
          }),
        ),
      ),
    );
  }
}

class NavaBara extends StatefulWidget {
  const NavaBara({super.key});

  @override
  State<NavaBara> createState() => _NavaBaraState();
}

class _NavaBaraState extends State<NavaBara> {
  late int selectIndex;

  List pages = [
    Center(
      child: Text(
        'Chat',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        'Story',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        'Community',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
    Center(
      child: Text(
        'Calls',
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    ),
  ];

  @override
  void initState() {
    selectIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      appBar: AppBar(
        title: Text('Ukhasyah\'s WhatsApp'),
        centerTitle: false,
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 24,
        ),
        backgroundColor: Colors.teal,
      ),
      body: pages[selectIndex],

      bottomNavigationBar: NavigationBar(
        selectedIndex: selectIndex,
        onDestinationSelected:
            (value) => setState(() {
              selectIndex = value;
            }),

        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        // Ganti Warna Background
        backgroundColor: Colors.teal,

        overlayColor: WidgetStatePropertyAll(Color(0xFF121f00)),

        // labelTextStyle: WidgetStatePropertyAll(
        //   TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        // ),
        indicatorColor: Colors.blueGrey.shade900,
        indicatorShape: CircleBorder(
          side: BorderSide(
            style: BorderStyle.solid,
            color: Colors.white,
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
          ),
        ),

        destinations: [
          NavigationDestination(icon: Icon(Icons.chat_rounded), label: 'Chat'),
          NavigationDestination(
            icon: Icon(Icons.add_photo_alternate_rounded),
            label: 'Android',
          ),
          NavigationDestination(
            icon: Icon(Icons.people_alt_sharp),
            label: 'Community',
          ),
          NavigationDestination(
            icon: Icon(Icons.add_ic_call_sharp),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
