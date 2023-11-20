import 'package:flutter/material.dart';
main()
{
  runApp(MaterialApp(home: Gridview6(),));
}
class Gridview6 extends StatelessWidget {
  const Gridview6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view custom'),
      ),
      body: GridView.custom(

          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),    //or
          // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 160,mainAxisSpacing: 20,crossAxisSpacing: 20),
          childrenDelegate: SliverChildListDelegate(
              // []   give items directly into list OR
            List.generate(10, (index) =>
            Image.network("https://images.unsplash.com/photo-1699871066013-0e1b535dc452?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw2OXx8fGVufDB8fHx8fA%3D%3D"))
          )),
    );
  }
}
