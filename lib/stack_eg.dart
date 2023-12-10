import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Stack_eg(),
  ));
}

class Stack_eg extends StatelessWidget {
  Stack_eg({super.key});
  var title = [
    "Privacy",
    "Purchase History",
    "Help & Support",
    "Settings",
    "Invite a friend",
    "Logout"
  ];

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
      ),
      body: Stack(
        children: [
          Container(
            height: h,
            width: 300,
            color: Colors.blueGrey,
          ),
          Container(
            height: 180,
            width: 280,
            color: Colors.yellowAccent,
          ),
          Positioned(
            top: h * 0.5,
            child: Container(
              height: h,
              width: 300,
              color: Color.fromARGB(211, 247, 247, 247),
              child: ListView(
                children: List.generate(
                    6,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            dense: true,
                            title: Text(
                              title[index],
                              style: TextStyle(fontSize: 25),
                            ),
                          ),
                        )),
              ),
            ),
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
