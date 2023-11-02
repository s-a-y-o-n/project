import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

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
      body: Column(
        children: [
          Text('SIGNUP', style: GoogleFonts.atomicAge(fontSize: 30, fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.only(left: 22,right: 22,top: 12),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30),),
                hintText: "Name",
                labelText: "Name",
              ),
            ),
          ),
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
          Padding(
            padding: EdgeInsets.only(left: 22,right: 22,top: 12,bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.key),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

                hintText: "Confirm Password",
                labelText: "Confirm Password",
              ),
            ),
          ),
          MaterialButton(
            color: Colors.green,
            shape: StadiumBorder(),
            height: 60,
            minWidth: 100,
            onPressed: (){}, child: Text('Signup'),),
          SizedBox(height: 20,),
          TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
            },
            child: RichText(text:  TextSpan(
                children: [
                  TextSpan(text: "Already have an account?"),
                  TextSpan(text: "Signin.", style: TextStyle(fontWeight: FontWeight.bold))
                ]
            )),
          )

        ],
      ),

    );
  }
}