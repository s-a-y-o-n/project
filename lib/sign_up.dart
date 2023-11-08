import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/log_in.dart';



class Sign_up extends StatelessWidget {
  const Sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 255, 248, 154),

      body: Padding(
        padding: const EdgeInsets.only(left: 50,right: 50),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Sign up', style: GoogleFonts.playfairDisplay(fontSize: 30, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Text('Just a few quick things to get started.',style: GoogleFonts.openSans(fontSize: 15),),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(left: 22,right: 22,top: 12),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                  hintText: "Email",
                  labelText: "Email",
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 22,right: 22,top: 12),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                  hintText: "Username",
                  labelText: "Username",
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 22,right: 22,top: 12,bottom: 10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key_off),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

                  hintText: "Password",
                  labelText: "Password",
                ),
              ),
            ),

            MaterialButton(
              color: Colors.green,
              shape: StadiumBorder(),
              height: 60,
              minWidth: 300,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Log_in()));
              }, child: Text('Create Account'),),
            SizedBox(height: 20,),
            TextButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Log_in()));
              },
              child: RichText(text:  TextSpan(
                  children: [
                    TextSpan(text: "Already have an account?"),
                    TextSpan(text: "Sign in.", style: TextStyle(fontWeight: FontWeight.bold))
                  ]
              )),
            )

          ],
        ),
      ),

    );
  }
}