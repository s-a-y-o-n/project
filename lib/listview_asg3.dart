import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: Listview_asg3(),
    debugShowCheckedModeBanner: false,
  ));
}
class Listview_asg3 extends StatelessWidget {

var icons=["assets/icons/apple-icon.png","assets/icons/Avocado-Illustration-icon.png","assets/icons/banana-icon.png",
"assets/icons/Blackcurrant-Illustration-icon.png","assets/icons/Blueberry-Illustration-icon.png","assets/icons/cherry-icon.png",
"assets/icons/Dragonfruit-Pitaya-Illustration-icon.png","assets/icons/lemon-icon.png","assets/icons/strawberry-icon.png",
"assets/icons/watermelon-icon.png"];
var fruit=["Apple","Avocado","Banana","Blackcurrant","Blueberry","Cherry","Dragonfruit","Lemon","Strawberry","Wattermelon"];
var price=[20,23,34,22,55,10,33,44,52,30];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
        centerTitle: true,
      ),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(childCount: 10,(context, index) => Padding(
        padding: const EdgeInsets.only(top: 3, left: 5, right: 5),
        child: Card(
          color: Colors.grey,
     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           Padding(
             padding: const EdgeInsets.only(left: 8, top: 5, bottom: 5),
             child: Image.network(icons[index], height: 80,),
           ),
           Column(crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               RichText(text: TextSpan(children: [
                 TextSpan(text: 'Name: '),
                 TextSpan(text: fruit[index], style: TextStyle(fontWeight: FontWeight.bold))
               ]),),
               RichText(text: TextSpan(
                 children: [TextSpan(text: 'Unit: '),
                 TextSpan(text: 'KG', style: TextStyle(fontWeight: FontWeight.bold))
                 ]
               )),
               RichText(text: TextSpan(
                 children: [
                   TextSpan(text: 'Price: '),
                   TextSpan(text:'\$ ${price[index].toString()}', style: TextStyle(fontWeight: FontWeight.bold) )
                 ]
               )),

             ],
           ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: MaterialButton(color: Colors.black54,minWidth: 100,
               onPressed: (){},child: Text('Add to Cart', style: TextStyle(color: Colors.white),),),
           )
         ],
     ),
        ),
      ))),
    );
  }
}
