import 'package:flutter/material.dart';

void main()
{
  runApp(const MaterialApp(
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
        title: const Text('appbar prop'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        leading: const Icon(Icons.menu),
        actions: [
          const Icon(Icons.camera_alt),
          const SizedBox(width: 10,),
          const Icon(Icons.search),

          PopupMenuButton(itemBuilder: (context){
            return [
              const PopupMenuItem(child: Text('New Group')),
              const PopupMenuItem(child: Text('Settings')),
              const PopupMenuItem(child: Text('Linked devices'))

            ];
          })
        ],
      ),
    );
  }
}
