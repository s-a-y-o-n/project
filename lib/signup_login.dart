import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const Text("Hello There!", style: TextStyle(fontSize: 33, fontWeight: FontWeight.w800),),
          const Image(image: AssetImage("assets/icons/death_evil_fantasy_grim reaper_icon.png")),
          ElevatedButton(onPressed: (){}, child: const Text("login")),
          MaterialButton(onPressed: (){},
            shape: const StadiumBorder(),
            color: Colors.lightBlue,
            child: const Text("Signup"),)
        ],
      ),
    );
  }
}
