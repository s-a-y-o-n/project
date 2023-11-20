import 'package:flutter/material.dart';
import 'package:project/widget_using_refactoring.dart';
void main(){
  runApp(MaterialApp(home: Custom_widget(),));
}
class Custom_widget extends StatelessWidget {
  const Custom_widget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 3,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      children:
        List.generate(10, (index) => CusWidget(label: Text('custom widget'), onpressed: (){},
          bgcolor: Colors.greenAccent,image: Image.asset("assets/icons/owlimg.jpg"),))
      ,
      )
      ,
    );
  }
}
