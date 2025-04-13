import 'package:flutter/material.dart';

class TabBarTest extends StatelessWidget {
  const TabBarTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Test());
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> with SingleTickerProviderStateMixin {
  late TabController conT;

  @override
  void initState() {
    // ✅ "this" sebagai vsync
    conT = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    // ✅ Wajib dispose biar ga bocor memory
    conT.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 41, 46),
      appBar: AppBar(
        title: Text('WhatsApp'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
        centerTitle: false,
        backgroundColor: Colors.teal,
        bottom: TabBar(
          // ✅ Pakai controller yang udah kita buat
          controller: conT,

          labelColor: Colors.white,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          indicatorColor: Colors.white,
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.normal),
          tabs: [
            Tab(text: 'Semua'),
            Tab(text: 'Group'),
            Tab(text: 'Belum Dibaca'),
          ],
        ),
      ),

      body: TabBarView(
        controller: conT, // ✅ Harus pakai controller juga
        children: [
          Tab(
            child: Center(
              child: Text(
                'Semua Chat Disini',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Tab(
            child: Center(
              child: Text(
                'Group',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Tab(
            child: Center(
              child: Text(
                'Belum Dibaca',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
