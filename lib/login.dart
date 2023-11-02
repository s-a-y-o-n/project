import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
        actions: [
          Icon(Icons.camera),
          SizedBox(width: 10,),
          Icon(Icons.search)
        ],
      ),
      body: Column(
        children: [
          Text('LOGIN', style: GoogleFonts.atomicAge(fontSize: 30, fontWeight: FontWeight.bold),),
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
                prefixIcon: Icon(Icons.key),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),

                hintText: "Password",
                labelText: "Password",
              ),
            ),
          ),
          ElevatedButton(onPressed: (){}, child: Text('Login'),)

        ],
      ),

    );
  }
}
