import 'package:flutter/material.dart';

class TabBarTest extends StatelessWidget {
  const TabBarTest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Test());
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text('WhatsApp'),
          centerTitle: false,
          titleTextStyle: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),

        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          backgroundColor: Colors.teal,
                          title: Text('Hallo Ukhasyah'),
                          titleTextStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                          ),
                          content: Text('Hallo, Selamat Soreee, wkwkwk'),
                          contentTextStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          actions: [
                            TextButton(onPressed: () {}, child: Text('Oke')),
                          ],
                        );
                      },
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.teal),
                  ),
                  child: Text(
                    'Dialog',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.teal,
                        showCloseIcon: true,
                        closeIconColor: Colors.white,
                        behavior: SnackBarBehavior.floating,
                        duration: Duration(seconds: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        content: Text('Hallo Ukhasyaah'),
                      ),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.teal),
                  ),
                  child: Text(
                    'SnackBar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: TabBar(
          tabs: [
            Tab(
              icon: Icon(
                Icons.notifications,
                semanticLabel: 'Dialog',
                color: Colors.teal,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.call,
                semanticLabel: 'SnackBar',
                color: Colors.teal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
