import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    home: Insta_splash(),
    debugShowCheckedModeBanner: false,
  ));
}
class Insta_splash extends StatelessWidget {
  const Insta_splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 285),
              child: Image(image: AssetImage("assets/icons/instalogo.png"),height: 80,width: 80,),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 215),
              child: Text("from",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold, color: Colors.black38),),
            ),
            Image(image: AssetImage("assets/icons/meta.png"),height: 50, width: 100,)

          ],
        ),
      ),
    );
  }
}
