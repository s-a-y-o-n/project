import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Listview_builder(),
  debugShowCheckedModeBanner: false,));
}
class Listview_builder extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text('ListView  builder'),),
      body: ListView.builder(itemCount: 101,
        scrollDirection:Axis.horizontal,
        itemBuilder: (context,index){
        return Container(
          height: 10,
          width: 30,
          color: Colors.orangeAccent,
          child: Text('wwMww'),
        );
      },),

    );
  }
}