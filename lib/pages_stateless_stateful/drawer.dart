import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Drawwer());
  }
}

class Drawwer extends StatelessWidget {
  const Drawwer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
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
    );
  }
}
