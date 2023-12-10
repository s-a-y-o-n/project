import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: StackAssignment(),
    debugShowCheckedModeBanner: false,
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
  var icons = [
    Icon(Icons.privacy_tip_outlined),
    Icon(Icons.history),
    Icon(Icons.help_outline),
    Icon(Icons.settings),
    Icon(Icons.person_add_alt_1_outlined),
    Icon(Icons.logout)
  ];

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [const PopupMenuItem(child: Text('Settings'))];
            },
            icon: Icon(Icons.menu),
          )
        ],
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: w,
              height: h,
            ),
            Positioned(
              child: Container(
                width: w,
                height: h * 0.5,
                color: Colors.white,
                child: Center(
                    child: Column(
                  children: [
                    CircleAvatar(
                      radius: 65,
                      backgroundImage: NetworkImage(
                          "https://images.unsplash.com/photo-1627319760033-ff296c2366e8?q=80&w=1374&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                    ),
                    SizedBox(
                      height: 30,
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
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
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
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                )),
              ),
            ),
            Positioned(
              top: 400,
              child: Container(
                height: h * 0.5,
                width: w,
                color: Colors.white,
                child: ListView(
                  children: List.generate(
                      6,
                      (index) => Padding(
                            padding: const EdgeInsets.all(8),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 238, 238, 238),
                                    borderRadius: BorderRadius.circular(50)),
                                child: ListTile(
                                  leading: icons[index],
                                  trailing: Icon(Icons.navigate_next),
                                  title: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15),
                                    child: Text(
                                      title[index],
                                      style: const TextStyle(fontSize: 22),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
