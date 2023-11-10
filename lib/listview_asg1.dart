import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Listview_asg1(),
    debugShowCheckedModeBanner: false,
  ));
}
class Listview_asg1 extends StatelessWidget {


  var months=["January", "February","March", "April","May","June","July","August","September","October","November","December"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(itemBuilder: (context,index){
        return Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(months[index]),
          ),
        );
      }, separatorBuilder: (context,index){
        if(index%4==0){
          return Card(color: Colors.redAccent,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Advertisement', style: TextStyle(color: Colors.white),),
          ),);
        }
        else
          {
            return Divider();
          }
      }, itemCount: 12),
    );
  }
}
