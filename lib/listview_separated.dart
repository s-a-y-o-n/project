import 'package:flutter/material.dart';
main()
{
  runApp(MaterialApp(home: Listview_separated(),));
}
class Listview_separated extends StatelessWidget {
  const Listview_separated({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Listview Separated"),),
      body: ListView.separated(itemBuilder: (context,index)
          {
            return Card(color: Colors.greenAccent,
              child: Text('inside the card'),
            );

          }, separatorBuilder: (context,index){
    if(index%3==0){
    return Divider(thickness: 9,color: Colors.blue,);
    }
    else {
    return SizedBox(height: 10,);
    }
    },
     itemCount: 10),

    );
  }
}
