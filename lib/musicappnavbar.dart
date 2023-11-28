import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:project/musicapp_ui.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Musicnavbar(),
    debugShowCheckedModeBanner: false,
  ));
}

class Musicnavbar extends StatefulWidget {
  @override
  State<Musicnavbar> createState() => _MusicnavbarState();
}

class _MusicnavbarState extends State<Musicnavbar> {
  var selectedindex = 2;
  var screens = [
    const Center(
        child: Text(
      "Home",
      style: TextStyle(color: Colors.white),
    )),
    const Center(
        child: Text(
      "Search",
      style: TextStyle(color: Colors.white),
    )),
     Musicapp(),
    const Center(
        child: Text(
      "More",
      style: TextStyle(color: Colors.white),
    ))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FlashyTabBar(
          backgroundColor: Colors.black,
          selectedIndex: selectedindex,
          items: [
            FlashyTabBarItem(
                icon: const Icon(Icons.home),
                title: const Text('Home'),
                inactiveColor: Colors.white,
                activeColor: const Color.fromARGB(255, 255, 129, 171)),
            FlashyTabBarItem(
                icon: const Icon(Icons.search),
                title: const Text('Search'),
                inactiveColor: Colors.white,
                activeColor: const Color.fromARGB(255, 255, 129, 171)),
            FlashyTabBarItem(
                icon: const Icon(Icons.playlist_play),
                title: const Text('Playlists'),
                inactiveColor: Colors.white,
                activeColor: const Color.fromARGB(255, 255, 129, 171)),
            FlashyTabBarItem(
                icon: const Icon(Icons.more_horiz),
                title: const Text('More'),
                inactiveColor: Colors.white,
                activeColor: const Color.fromARGB(255, 255, 129, 171))
          ],
          onItemSelected: (index) {
            setState(() {
              selectedindex = index;
            });
          }),
      body: screens[selectedindex],
      backgroundColor: Colors.black,
    );
  }
}
