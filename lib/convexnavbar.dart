import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:project/landinpage.dart';

import 'gridview5.dart';
import 'gridview_4.dart';

import 'listview_separated.dart';

void main(){
  runApp(MaterialApp(home: Convexnav_1(),));
}
class Convexnav_1 extends StatefulWidget {
  const Convexnav_1({super.key});

  @override
  State<Convexnav_1> createState() => _Convexnav_1State();
}

class _Convexnav_1State extends State<Convexnav_1> {
  int index=0;
  var screens=[const Landinpage(),const Listview_separated(),const Gridview5(),Gridview4()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Convex'),
      ),
      bottomNavigationBar: ConvexAppBar(
          onTap: (index1){
            setState(() {
              index=index1;
            });
          },
         

          items: [TabItem(icon: Icon(Icons.home),title: 'Home'),TabItem(icon: Icon(Icons.explore),title: 'Explore'),
        TabItem(icon: Icon(Icons.message),title: 'Message'),
        TabItem(icon: Icon(Icons.person),title: 'Profile')]),
        body: screens[index],
    );
  }
}
