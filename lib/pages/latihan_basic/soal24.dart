import 'package:flutter/material.dart';

class Soal24 extends StatelessWidget {
  const Soal24({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Instagram'),
          centerTitle: false,
          titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          actions: [
            Icon(Icons.favorite_border_outlined),
            SizedBox(width: 24),
            Icon(Icons.mark_chat_read),
            SizedBox(width: 24),
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 10, top: 10),
              height: 110,
              // color: Colors.black,
              child: Row(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: 12,
                      scrollDirection: Axis.horizontal,
                      itemBuilder:
                          (context, index) => Stack(
                            alignment: Alignment.center,
                            children: [
                              ClipOval(
                                child: Container(
                                  // alignment: Alignment.center,
                                  width: 92,
                                  height: 92,
                                  color: Colors.green,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                width: 85,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 4,
                                  ),
                                  borderRadius: BorderRadius.circular(95),
                                ),
                              ),
                            ],
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 6,
                itemBuilder:
                    (context, index) => Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 130,
                            decoration: BoxDecoration(
                              color: Colors.green,

                              borderRadius: BorderRadius.circular(10),
                            ),
                            margin: EdgeInsets.only(bottom: 12),
                          ),
                          Text(
                            'ukasyaaah',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
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
