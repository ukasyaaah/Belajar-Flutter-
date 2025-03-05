import 'package:belajar_flutter/pages_stateless_stateful/dialog.dart';
import 'package:belajar_flutter/pages_stateless_stateful/navigation.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Drawer Page')),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('ukasyaaah'),
                accountEmail: Text('Ukhasyah Fauzan'),

                currentAccountPicture: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.black45,
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.splitscreen_rounded),
                      title: Text('Popular'),
                      onTap: () => Navigator.pop(context),
                    ),
                    ListTile(
                      leading: Icon(Icons.search),
                      title: Text('Search'),
                      onTap: () => Navigator.pop(context),
                    ),
                    ListTile(
                      leading: Icon(Icons.people),
                      title: Text('Profile'),
                      onTap: () => Navigator.pop(context),
                    ),
                    ListTile(
                      leading: Icon(Icons.watch_later),
                      title: Text('Watchlist'),
                      onTap: () => Navigator.pop(context),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.close),
                      title: Text('Close'),
                      onTap: () => Navigator.pop(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  '<<< Kembali ke Halaman',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.red),
                onPressed: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => DialogPage()));
                },
                child: Text(
                  'Lanjut ke Halaman >>>',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
