import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/home.dart';
import 'package:project/signuppage.dart';

class LoginPage extends StatelessWidget {
   final String name = 'admin', password= 'abcd';
  final user_controler=TextEditingController();
  final pass_controler=TextEditingController();

  LoginPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        backgroundColor: Colors.white60,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black,),
        // actions: [
        //   Icon(Icons.camera),
        //   SizedBox(width: 10,),
        //   Icon(Icons.search)
        // ],
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('LOGIN', style: GoogleFonts.playfairDisplay(fontSize: 30, fontWeight: FontWeight.bold),),
          SizedBox(height: 10,),
          Text('Welcome back! Login with your credentials',style: GoogleFonts.openSans(fontSize: 15),),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 40,right: 40,top:20,bottom: 10),
            child: TextField(

              controller: user_controler,
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
              obscuringCharacter: '-',
              controller: pass_controler,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.key),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

                hintText: "Password",
                labelText: "Password",
              ),
            ),
          ),
          MaterialButton(
            color: Colors.blue,
            shape: StadiumBorder(),
            height: 60,
            minWidth: 400,
            onPressed: (){
              if(name==user_controler.text && password==pass_controler.text){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
              }
              else{
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Invalid details'),
                  backgroundColor: Colors.red,
                ));
              }
              user_controler.text='';
              pass_controler.text='';
            }, child: Text('Login',style: TextStyle(color: Colors.white),),),
          SizedBox(height: 20,),
          TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
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
