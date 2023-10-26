import 'package:flutter/material.dart';

void main() {
  // runnapp() Inflate the given widget and attach it to the screen.
  runApp(MaterialApp(
    home: Splash(),
  )); //materialapp :default theme
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Icon(
          Icons.movie_sharp,
          size: 200,
        ),
      ),
    );
  }
}
