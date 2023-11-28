import 'package:flutter/material.dart';
import 'package:project/mediaquery/bigscreen.dart';
import 'package:project/mediaquery/mobScreen.dart';

void main() {
  runApp(MaterialApp(
    home: Orienteg2(),
  ));
}

class Orienteg2 extends StatelessWidget {
  const Orienteg2({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    if (width < 650) {
      return Mobscreen();
    } else {
      return BigScreen();
    }
  }
}
