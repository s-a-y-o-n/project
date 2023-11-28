import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview5(),
  ));
}

class Gridview5 extends StatelessWidget {
  const Gridview5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 200,
        children: List.generate(
            10,
            (index) => Card(
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Expanded(child: Image.asset("assets/icons/meta.png")),
                        // MaterialButton(onPressed: (){},
                        //   minWidth: 100,
                        //   color: Colors.black54,
                        // child: Text('CLICK', style: TextStyle(color: Colors.white),),)
                        ElevatedButton.icon(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.lightGreenAccent),
                          onPressed: () {},
                          icon: Icon(Icons.mediation),
                          label: Text('GOTO'),
                        )
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
