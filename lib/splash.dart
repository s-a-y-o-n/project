import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
          ///background image
            // image:DecorationImage(
            //     fit: BoxFit.cover,
            // image:NetworkImage("https://images.unsplash.com/photo-1698306402307-7d835dbda2e6?auto=format&fit=crop&q=80&w=1374&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))
        gradient: LinearGradient(
            begin: Alignment.bottomRight,
            end : Alignment.topLeft,
            colors: [Colors.red,Colors.redAccent,Colors.black,Colors.blueGrey,Colors.blue])
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Icon(
              //   Icons.movie_sharp,
              //   size: 200,
              // ),

              Image.asset("assets/icons/death_evil_fantasy_grim reaper_icon.png",height: 200,width: 200),

              // Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSitRR1YjtF86dsqjrS6mlhXp14y7R9Nk9LeQ&usqp=CAU"),
              Text("Woooaaaaaa",
                  // style: TextStyle(fontSize: 30, color: Colors.white,fontWeight: FontWeight.bold)
                style: GoogleFonts.lobster(fontSize: 39, color: Colors.greenAccent,fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
