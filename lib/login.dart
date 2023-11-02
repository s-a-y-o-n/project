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
      body: Column(
        children: [
          Text('LOGIN', style: GoogleFonts.atomicAge(fontSize: 30, fontWeight: FontWeight.bold),),
          Padding(
            padding: EdgeInsets.only(left: 22,right: 22,top: 12),
            child: TextField(
              controller: user_controler,
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
            color: Colors.green,
            shape: StadiumBorder(),
            height: 60,
            minWidth: 100,
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
            }, child: Text('Login'),),
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
