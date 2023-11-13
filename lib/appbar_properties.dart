import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: Appbar_propertiies(),
    debugShowCheckedModeBanner: false,
  ));
}
class Appbar_propertiies extends StatelessWidget {
  const Appbar_propertiies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('appbar prop'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.camera_alt),
          SizedBox(width: 10,),
          Icon(Icons.search),

          PopupMenuButton(itemBuilder: (context){
            return [
              PopupMenuItem(child: Text('New Group')),
              PopupMenuItem(child: Text('Settings')),
              PopupMenuItem(child: Text('Linked devices'))

            ];
          })
        ],
      ),
    );
  }
}
