import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: Gridview1(),
  debugShowCheckedModeBanner: false,));
}

class Gridview1 extends StatelessWidget {
  const Gridview1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              maxCrossAxisExtent: 100),
          children:
            List.generate(100, (index) =>
                Container(
                  color: Colors.grey,
                  child:Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.handshake,size: 50,),
                      Text('Something', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)
                    ],
                  ),),),)
          // [
          //
          //   Card(child:Center(child: Icon(Icons.airplanemode_active,size: 20,),),),
          //   Card(child:Center(child: Icon(Icons.airplanemode_active,size: 20,),),),
          //   Card(child:Center(child: Icon(Icons.airplanemode_active,size: 20,),),),
          //   Card(child:Center(child: Icon(Icons.airplanemode_active,size: 20,),),),
          //   Card(child:Center(child: Icon(Icons.airplanemode_active,size: 20,),),),
          //   Card(child:Center(child: Icon(Icons.airplanemode_active,size: 20,),),),
          //   Card(child:Center(child: Icon(Icons.airplanemode_active,size: 20,),),),
          //   Card(child:Center(child: Icon(Icons.airplanemode_active,size: 20,),),),
          //   Card(child:Center(child: Icon(Icons.airplanemode_active,size: 20,),),),
          //   Card(child:Center(child: Icon(Icons.airplanemode_active,size: 20,),),),
          //   Card(child:Center(child: Icon(Icons.airplanemode_active,size: 20,),),),
          //   Card(child:Center(child: Icon(Icons.airplanemode_active,size: 20,),),),
          // ],
        ),
      ),
    );
  }
}
