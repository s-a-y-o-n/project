import 'package:flutter/material.dart';

class Mobscreen extends StatelessWidget {
  const Mobscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 92, 161, 146),
      appBar: AppBar(
        title: const Text('Mobile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          children: [
            //currently playing video
            Padding(
              padding: EdgeInsets.all(8),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Container(
                  color: Color.fromARGB(255, 232, 255, 232),
                ),
              ),
            ),
            //list of videos
            Expanded(
                child: ListView.builder(
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(8),
                  child: Container(
                    color: Color.fromARGB(255, 216, 236, 255),
                    height: 120,
                  ),
                );
              },
              itemCount: 8,
            ))
          ],
        ),
      ),
    );
  }
}
