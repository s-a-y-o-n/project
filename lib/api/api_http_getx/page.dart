import 'package:flutter/material.dart';
import 'package:project/api/api_http_getx/apis.dart';

void main() {
  runApp(MaterialApp(
    home: Page(),
  ));
}

class Page extends StatelessWidget {
  Page({super.key});
  final num_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextFormField(
            controller: num_ctrl,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(hintText: 'Number'),
          ),
          ElevatedButton(
              onPressed: () {
                final num = num_ctrl.text;
                getNumberfact(number: num);
              },
              child: Text('click')),
        ],
      ),
    );
  }
}
