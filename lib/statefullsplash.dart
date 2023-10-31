import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'login.dart';

void main()
{
  runApp(MaterialApp(home: Splash2(),));

}
class Splash2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Splash2State();

  }

}
class Splash2State extends State<Splash2>{

  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset("assets/animations/animi.json"),

        // child: Lottie.network("https://lottie.host/0053804e-a341-4b87-b49e-bcd18558a6cc/jqVfxCIy4P.json"),
      ),
    );
  }

}