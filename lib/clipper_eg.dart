import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

void main() {
  runApp(MaterialApp(
    home: Clipper_eg(),
    debugShowCheckedModeBanner: false,
  ));
}

class Clipper_eg extends StatelessWidget {
  const Clipper_eg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clipper'),
      ),
      body: ListView(
        children: [
          ClipRect(
            child: Align(
              child: Image.asset(
                "assets/icons/neom.jpg",
              ),
              widthFactor: .1,
              heightFactor: .5,
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              "assets/icons/neom.jpg",
            ),
          ),
          ClipOval(
            child: Image.asset(
              "assets/icons/maxence.jpg",
            ),
          ),
          ClipPath(
            clipper: TriangleClipper(),
            child: Container(
              height: 50,
              color: Color.fromARGB(244, 87, 235, 186),
            ),
          ),
          ClipPath(
            clipper: MovieTicketBothSidesClipper(),
            child: Container(
              height: 70,
              color: Colors.black,
              child: Center(
                child: Text(
                  'Movie ticket',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          ClipPath(
            clipper: ArrowClipper(80, 60, Edge.RIGHT),
            child: Container(
              height: 100,
              width: 50,
              color: Color.fromARGB(255, 141, 180, 0),
              child: Center(
                child: Text(
                  'This Way Nigga',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
