import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview3(),
    debugShowCheckedModeBanner: false,
  ));
}

// ignore: must_be_immutable
class Gridview3 extends StatelessWidget {
  var icons = [
    const Icon(Icons.home, size: 50,),
    const Icon(Icons.notification_important, size: 50),
    const Icon(Icons.linked_camera, size: 50),
    const Icon(Icons.airplane_ticket, size: 50),
    const Icon(Icons.leak_remove, size: 50),
    const Icon(Icons.book, size: 50),
    const Icon(Icons.call, size: 50),
    const Icon(Icons.mail, size: 50),
    const Icon(Icons.map, size: 50),
    const Icon(Icons.developer_board, size: 50),
    const Icon(Icons.mic_off, size: 50),
    const Icon(Icons.file_present_sharp, size: 50)
  ];

  Gridview3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.builder(
              itemCount: 12,
              gridDelegate:
                  const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 30, mainAxisSpacing: 30, mainAxisExtent: 100),
              itemBuilder: (context, index) {
                return Card(elevation: 15,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [icons[index],
                      const SizedBox(width: 20,),
                      Container(width: 100,
                          child: const Text('Heart Shaker',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),))
                    ],
                  ),
                );
              }),
        ));
  }
}
