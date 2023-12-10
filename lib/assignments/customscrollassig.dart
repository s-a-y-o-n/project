import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CustomScroll(),
    debugShowCheckedModeBanner: false,
  ));
}

// ignore: must_be_immutable
class CustomScroll extends StatelessWidget {
  CustomScroll({super.key});
  var title = [
    "Privacy",
    "Purchase History",
    "Help & Support",
    "Settings",
    "Invite a friend",
    "Logout",
    "jsddsd",
    "sjdhsdg"
  ];

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        actions: [
          PopupMenuButton(
              icon: Icon(Icons.menu),
              itemBuilder: (context) {
                return [const PopupMenuItem(child: Text('Settings'))];
              })
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            expandedHeight: h * 0.5,
            pinned: true,
            floating: false,
            centerTitle: true,
            flexibleSpace: const Center(
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
                )
              ],
            )),
          ),
          SliverList(
              delegate: SliverChildListDelegate(List.generate(
                  8,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          dense: true,
                          title: Text(
                            title[index],
                            style: TextStyle(fontSize: 25),
                          ),
                        ),
                      ))))
        ],
      ),
    );
  }
}
