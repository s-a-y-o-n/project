import 'package:flutter/material.dart';
import 'package:project/bottomsheet.dart';
import 'package:project/carousel_slider.dart';
import 'package:project/listview_asg2.dart';
import 'package:project/staggered_grid1.dart';
main()
{
  runApp(MaterialApp(home: Tabbar1(),));
}
class Tabbar1 extends StatelessWidget {
  const Tabbar1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tapbar'),
          bottom: TabBar(tabs: [
            Text('Community'),
            Text('Chats'),
            Text('Updates'),
            Text('Calls')
          ]),
        ),
        body: TabBarView(children:
        [
          Bottomsheet(),
          Carousel_slider1(),
              Staggered_grid1(),
    Listview_asg2(),

        ])

      ),
    );
  }
}
