import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/sign_up.dart';
import 'package:project/home.dart';



class Log_in extends StatelessWidget {
  final String name = 'admin', password= 'abcd';
  final user_controler=TextEditingController();
  final pass_controler=TextEditingController();

  Log_in({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.greenAccent,
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login', style: GoogleFonts.playfairDisplay(fontSize: 30, fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text('Hello, Welcome back',style: GoogleFonts.openSans(fontSize: 15),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40,top:20,bottom: 10),
            child: TextField(


              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(10),
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                hintText: "Email",
                labelText: "Email",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40,right: 40,top: 12,bottom: 10),
            child: TextField(
              obscureText: true,
              obscuringCharacter: '*',

              decoration: InputDecoration(
                prefixIcon: Icon(Icons.key),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

                hintText: "Password",
                labelText: "Password",
              ),
            ),
          ),
          MaterialButton(
            color: Colors.purple,
            shape: StadiumBorder(),
            height: 60,
            minWidth: 400,
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Home()));

            }, child: Text('Login',style: TextStyle(color: Colors.white),),),
          SizedBox(height: 20,),
          TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_up()));
            },
            child: RichText(text:  TextSpan(
                children: [
                  TextSpan(text: "Don't have an account?"),
                  TextSpan(text: "Signup.", style: TextStyle(fontWeight: FontWeight.bold))
                ]
            )),
          )

        ],
      ),

    );
  }
}
