import 'package:flutter/material.dart';
import 'package:project/gridview5.dart';
import 'package:project/gridview_4.dart';
import 'package:project/listview_builder.dart';
import 'package:project/listview_separated.dart';

main()
{
  runApp(const MaterialApp(home: Bottomnav(),));
}

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int index=0;
  var screens=[Listview_builder(),const Listview_separated(),const Gridview5(),Gridview4()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapindex){
          setState(() {
             index=tapindex;
          });
        },
        currentIndex: index,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,

        items:const [ BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.search,),label: 'Search'),
      BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notification'),
      BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile')],),
      body: screens[index],
    );
  }
}