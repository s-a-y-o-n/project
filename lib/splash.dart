import 'package:flutter/material.dart';

void main() {
  // runnapp() Inflate the given widget and attach it to the screen.
  runApp(MaterialApp(
    home: Splash(),
  )); //materialapp :default theme
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon(
            //   Icons.movie_sharp,
            //   size: 200,
            // ),
            
            Image.asset("assets/icons/death_evil_fantasy_grim reaper_icon.png",height: 200,width: 200),
           
            // Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitRR1YjtF86dsqjrS6mlhXp14y7R9Nk9LeQ&usqp=CAU"),
            Text("Woooaaaaaa", style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
