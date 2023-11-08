import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(home: Home(),
  debugShowCheckedModeBanner: false,
  ));
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacts'),),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(backgroundImage:AssetImage("assets/icons/death_evil_fantasy_grim reaper_icon.png")),
            title: Text("Name"),
            subtitle: Text("5454555555"),
            trailing: Icon(Icons.call),
          ),
          Card(

            elevation: 10,

            child: ListTile(
            leading: CircleAvatar(backgroundColor: Colors.grey,child: Icon(Icons.person),),
            title: Text("Name1"),
         subtitle: Row(
           children: [
             Icon(Icons.done_all, color: Colors.blue,),
             Text("message"),
           ],
         ),
            trailing: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("12:12"),

                CircleAvatar(backgroundColor: Colors.green,radius: 10,
                child: Text('4', style: TextStyle(fontSize: 15),),),
              ],
            ),
            ),
          ),
          FaIcon(FontAwesomeIcons.whatsapp,),
          ListTile(
          leading: Icon(Icons.person),
          title: Text("Name2"),
          subtitle: Text("9988665533"),
          trailing: Icon(Icons.call),
          ),
          ]
      ),
    );
  }
}
