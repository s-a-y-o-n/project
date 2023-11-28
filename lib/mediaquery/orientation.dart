import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Orientationeg(),
  ));
}

// ignore: must_be_immutable
class Orientationeg extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var height, width, orientation;

  Orientationeg({super.key});

  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context)
        .orientation; //to get the orientation of the de device
    height = MediaQuery.of(context).size.height;
    width =
        MediaQuery.of(context).size.width; //and these two get the dimensions
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media query - orientation'),
      ),
      body: orientation == Orientation.portrait
          ? Container(
              //used ternary operator, nothing more :)
              color: Colors.green,
              height: height / 2,
              width: width / 2,
              child: const Center(child: Text('Portrait')),
            )
          : Container(
              color: const Color.fromARGB(255, 1, 114, 122),
              height: height / 2,
              width: width,
              child: const Center(child: Text('Landscape')),
            ),
    );
  }
}
