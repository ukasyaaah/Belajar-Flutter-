import 'package:flutter/material.dart';

class BottomSheetPage extends StatelessWidget {
  const BottomSheetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                isDismissible: false,
                context: context,
                builder:
                    (context) => Container(
                      decoration: BoxDecoration(
                        color: Colors.amber.shade300,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 300,
                      child: Center(
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () => Navigator.pop(context),
                              leading: Icon(Icons.close, color: Colors.black),
                              selected: true,
                              title: Text(
                                'Close',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            Text('Hallo Ukhasyah'),
                          ],
                        ),
                      ),
                    ),
              );
            },
            child: Text('Show Bottom Sheet'),
          ),
        ),
      ),
    );
  }
}
