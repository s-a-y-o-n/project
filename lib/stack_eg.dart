import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Stack_eg(),
  ));
}

class Stack_eg extends StatelessWidget {
  const Stack_eg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            height: 250,
            width: 250,
            color: Colors.blueGrey,
          ),
          Container(
            height: 180,
            width: 180,
            color: Colors.yellowAccent,
          ),
          Positioned(
            left: 150,
            top: 30,
            bottom: 60,
            child: Container(
                height: 160,
                width: 160,
                color: Color.fromARGB(212, 17, 83, 48)),
          ),
          Container(
            height: 140,
            width: 140,
            // color: Color.fromARGB(255, 255, 255, 255),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/icons/neom.jpg"),
                    fit: BoxFit.fill)),
          )
        ],
      ),
    );
  }
}
