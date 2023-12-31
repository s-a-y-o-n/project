// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: Drawer_eg(),
    debugShowCheckedModeBanner: false,
  ));
}

class Drawer_eg extends StatelessWidget {
  const Drawer_eg({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer'),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1700359387203-d24d08d07b04?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0fHx8ZW58MHx8fHx8"),
                        fit: BoxFit.fill)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/owlimg.jpg"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/icons/neom.jpg"),
                  )
                ],
                accountName: Text('Its me Heisenberg'),
                accountEmail: Text(
                    'itsmeheisenberg@gmail.com')), //this is a header that is showed on the top of the drawer which contain the account details(in this case)
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text('Explore'),
            )
          ],
        ),
      ),
    );
  }
}
