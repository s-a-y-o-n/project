import 'package:flutter/material.dart';
import 'package:project/log_in.dart';
import 'package:project/sign_up.dart';
main()
{
  runApp(const MaterialApp(
    home: Landinpage(),
    debugShowCheckedModeBanner: false,
  ));
}
class Landinpage extends StatelessWidget {
  const Landinpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage("assets/icons/img3.png"), height: 100, width: 400,),
            Text("Make Mymories", style: TextStyle(color: Colors.white, fontSize: 20,),),
            SizedBox(height: 10,),
            Text('Record recall and share your favorite mymories anytime.', style: TextStyle(color: Colors.white, fontSize: 10),),
            SizedBox(height: 20,),
            MaterialButton(onPressed: (){},
              minWidth: 300,
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text('Continue with Apple',),
            ),
            color: Colors.greenAccent,
            shape: StadiumBorder(),
            ),
            SizedBox(height: 10,),
            MaterialButton(onPressed: (){},
              minWidth: 300,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text('Continue with Google',),
              ),
              color: Color.fromARGB(255, 255, 248, 154),
              shape: StadiumBorder(),),
            SizedBox(height: 10,),
            MaterialButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Sign_up()));
            },
              minWidth: 300,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text('Sign up with email',),
              ),
              color: Colors.white,
              shape: StadiumBorder(),),
            SizedBox(height: 10,),
            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Log_in()));
            },  child: RichText(text:  TextSpan(
                children: [
                  TextSpan(text: "Already have an account?", style: TextStyle(color: Colors.white)),
                  TextSpan(text: "Log in.", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white))
                ]
            )),
            )

          ],
        ),
      ),
    );
  }
}
