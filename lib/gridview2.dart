import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview2(),));
}
class Gridview2 extends StatelessWidget {
   Gridview2({super.key});
  var images=["https://images.unsplash.com/photo-1698961251392-dcd538b58310?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOXx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1698778873705-1b01e3b3574b?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0MXx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1699251391796-9c87cfdba2ab?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw0Nnx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1699694927472-46a4fcf68973?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1N3x8fGVufDB8fHx8fA%3D%3D",
  "https://plus.unsplash.com/premium_photo-1699382168474-84c1ce570430?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw1Nnx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1699393393011-4f6f3e36a5c0?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2NHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1699730191180-051789dfaab9?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4Mnx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1699147831362-9a875de53ed4?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw4NXx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1698571090063-0758fa13fa86?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5NHx8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1699746277651-3b1438122eaa?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw5N3x8fGVufDB8fHx8fA%3D%3D",
  "https://images.unsplash.com/photo-1699592854133-25c24959d60f?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxMzB8fHxlbnwwfHx8fHw%3D"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(itemCount: 11,
          // scrollDirection: Axis.horizontal,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 10), itemBuilder: (context,index){
        return Column(
          children: [
            Container(width:100,height: 100,
                child: Image.network(images[index],width: 200,)),
            Text('Text $index')
          ],
        );
      }),
    );
  }
}
