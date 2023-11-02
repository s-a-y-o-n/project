import 'package:flutter/material.dart';
import 'package:project/login.dart';
import 'package:project/signuppage.dart';

class Signuphm extends StatelessWidget {
  const Signuphm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: Column(


          children: [
            const Text("Hello There!", style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 20,right: 20),
              child: Text('Automatic identify verification which enables you to verify your identity', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w100),),
            ),
            const Image(image: AssetImage("assets/icons/img1.jpg"),width: 400,height: 400,),
            Padding(
              padding: const EdgeInsets.all(5),
              child: MaterialButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
                shape: const StadiumBorder(),
                color: Colors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.only(left: 200,right: 200,top: 15,bottom: 15),
                  child: const Text("Login"),
                ),),
            ),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SignupPage()));
            },
              shape: const StadiumBorder(),
              color: Colors.redAccent,
              child: Padding(
                padding: const EdgeInsets.only(left: 190,right: 190,top: 15,bottom: 15),
                child: const Text("Sign up"),
              ),),
          ],
        ),
      ),
    );
  }
}
