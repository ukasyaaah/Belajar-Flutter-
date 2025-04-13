import 'package:flutter/material.dart';

class BottomSheest extends StatelessWidget {
  const BottomSheest({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SheestExa());
  }
}

class SheestExa extends StatelessWidget {
  const SheestExa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.lime),
                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                onPressed: () {
                  Scaffold.of(context).showBottomSheet(
                    (BuildContext context) => Container(
                      width: 200,
                      height: 200,

                      color: Colors.amber,
                      child: Center(
                        child: Text(
                          "Ini Persistent Bottom Sheet",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
                child: Text(
                  'Bottom Sheets',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
