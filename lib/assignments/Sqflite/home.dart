import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final data;
  const Home({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  child: Icon(Icons.person),
                ),
                SizedBox(height: 20),
                Text(
                  'Welcome ${data[0]["name"]}',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
