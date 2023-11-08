import 'package:flutter/material.dart';
import 'package:project/home.dart';
import 'package:project/stfl_login.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Stfl_reg(),
  ));
}

// ignore: camel_case_types
class Stfl_reg extends StatefulWidget {
  const Stfl_reg({super.key});

  @override
  State<Stfl_reg> createState() => Stfl_regState();
}

// ignore: camel_case_types
class Stfl_regState extends State<Stfl_reg> {
  final formkey = GlobalKey<FormState>();
  String? pwd;
  bool show=true, cshow=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        backgroundColor: Colors.lightGreen,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Form(
            key: formkey,
            child: Column(children: [
              const Image(
                image: AssetImage("assets/icons/img1.jpg"),
                height: 200,
                width: 200,
              ),
              TextFormField(
                validator: (email) {
                  if (email!.isEmpty || !email.contains('@')) {
                    return 'Enter a valid email';
                  } else {
                    return null;
                  }
                },
                decoration: const InputDecoration(
                    hintText: 'Email', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                obscureText: show,
                obscuringCharacter: '*',
                validator: (password) {
                  pwd=password;
                  if (password!.length < 6 || password.isEmpty) {

                    return 'Password must contain atleast 6 characters';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if(show==true){
                        show=false;
                      }
                      else{
                        show=true;
                      }
                    });
                  }, icon: Icon(show==true?
                  Icons.visibility
                  :Icons.visibility_off_sharp)),
                    hintText: 'Password', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                obscureText: cshow,
                obscuringCharacter: '*',
                validator: (cpassword) {
                  if (cpassword!=pwd || cpassword!.isEmpty) {
                    return 'wrong password';
                  } else {
                    return null;
                  }
                },
                decoration: InputDecoration(
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      if(cshow==true)
                        {
                          cshow=false;
                        }
                      else{
                        cshow=true;
                      }
                    });
                  }, icon: Icon(cshow==true?
                  Icons.visibility
                  : Icons.visibility_off_sharp)),
                    hintText: 'Confirm Password', border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              MaterialButton(
                minWidth: 200,
                height: 50,
                color: Colors.green,
                shape: const StadiumBorder(),
                onPressed: () {
                  final valid = formkey.currentState?.validate();
                  if (valid == true) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Login_Stfl()));
                  }
                },
                child: const Text(
                  'Signup',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
