import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview4(),
    debugShowCheckedModeBanner: false,
  ));
}

class Gridview4 extends StatelessWidget {
  var icons = [
    "assets/icons/apple-icon.png",
    "assets/icons/Avocado-Illustration-icon.png",
    "assets/icons/banana-icon.png",
    "assets/icons/Blackcurrant-Illustration-icon.png",
    "assets/icons/Blueberry-Illustration-icon.png",
    "assets/icons/cherry-icon.png",
    "assets/icons/Dragonfruit-Pitaya-Illustration-icon.png",
    "assets/icons/lemon-icon.png",
    "assets/icons/strawberry-icon.png",
    "assets/icons/watermelon-icon.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          childAspectRatio: 1,
          crossAxisCount: 2,
          crossAxisSpacing: 100,
          mainAxisSpacing: 100,
          children: List.generate(
            10,
            (index) => Card(
              child: Row(children: [
                Expanded(child: Image.asset(icons[index])),
                const Text('Apple')
              ]),
            ),
          )),
    );
  }
}
