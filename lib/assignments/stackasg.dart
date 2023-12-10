import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackAssignment(),
  ));
}

// ignore: must_be_immutable
class StackAssignment extends StatelessWidget {
  StackAssignment({super.key});
  var title = [
    "Privacy",
    "Purchase History",
    "Help & Support",
    "Settings",
    "Invite a friend",
    "Logout",
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [const PopupMenuItem(child: Text('Settings'))];
            },
            icon: Icon(Icons.menu),
          )
        ],
      ),
      body: Stack(
        children: [
          Container(
            width: w,
            height: h,
          ),
          Positioned(
            // bottom: h * 0.5,
            child: Container(
              width: w,
              height: h * 0.5,
              child: Center(
                  child: Column(
                children: [
                  CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1627319760033-ff296c2366e8?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/icons/facebook.png")),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1690766636714-962f88aaa0a3?q=80&w=1528&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0bGEl9v47XieEtHyj0TqTr1tOXJmib-KHtw&usqp=CAU"),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      CircleAvatar(
                          backgroundImage:
                              AssetImage("assets/icons/github-mark.png")),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Jerin',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '@webrror',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Mobile App Developer',
                    style: TextStyle(fontSize: 20),
                  ),
                  Text('$h')
                ],
              )),
            ),
          ),
          Positioned(
            top: 400,
            child: Container(
              height: 380,
              width: w,
              child: ListView(
                children: List.generate(
                    6,
                    (index) => Padding(
                          padding: const EdgeInsets.all(10),
                          child: ListTile(
                            dense: true,
                            title: Text(
                              title[index],
                              style: const TextStyle(fontSize: 25),
                            ),
                          ),
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
