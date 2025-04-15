import 'package:flutter/material.dart';

class Model extends StatefulWidget {
  const Model({super.key});

  @override
  State<Model> createState() => _ModelState();
}

class _ModelState extends State<Model> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlertDialog(
        content: Text('Helo'),
        actions: [
          IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.nearby_error_rounded),
          ),
        ],
      ),
    );
  }
}
