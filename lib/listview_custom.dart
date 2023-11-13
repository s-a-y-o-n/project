import 'dart:math';

import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: Listview_custom(),
  ));
}
class Listview_custom extends StatelessWidget {
  const Listview_custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View Custom'),
      ),
      body:
      // ListView.custom(childrenDelegate: SliverChildListDelegate(
      //     // [
      //   // Card(
      //   //   child: Center(child: Text('data'),),
      //   // )
      //   List.generate(10, (index) => Card(
      //         child: Center(child: Text('data'),),
      //       ))
      //
      // // ]
      //
      // )
      // ),

      ListView.custom(childrenDelegate: SliverChildBuilderDelegate(childCount: 10,(context, index) => Card(
        color: Colors.primaries[Random().nextInt(Colors.primaries.length)], // to get random color
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset("assets/icons/death_evil_fantasy_grim reaper_icon.png", height: 100, width:100,),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name : sjdnsd'),
                Text('Quantity : 3456'),
                Text('Price : \$ 2000/kg'),
              ],
            ),
            MaterialButton(color: Colors.brown,shape: StadiumBorder(), minWidth: 120, height: 50,onPressed: (){},
              child: Text('Add to cart', style: TextStyle(color: Colors.white),),)
          ],
        ),
      )))
    );
  }
}
