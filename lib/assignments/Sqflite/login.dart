import 'package:flutter/material.dart';
import 'package:project/assignments/Sqflite/admindash.dart';
import 'package:project/assignments/Sqflite/home.dart';
import 'package:project/assignments/Sqflite/signup.dart';
import 'package:project/assignments/Sqflite/sql_function.dart';

void main() {
  runApp(MaterialApp(
    home: Login_SQF(),
    debugShowCheckedModeBanner: false,
  ));
}

class Login_SQF extends StatelessWidget {
  var formkey = GlobalKey<FormState>();
  var email_ctrl = TextEditingController();
  var pass_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void login(String email, String pass) async {
      if (email == "admin@gmail.com" && pass == "password") {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Admindash()));
      } else {
        //check if the user is awailable
        var data = await SQL_functions.checkuser(email, pass);
        if (data.isNotEmpty) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => Home(data: data)));
        }
      }
    }

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 146, 146, 146),
      body: Center(
        child: Form(
            key: formkey,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20, vertical: 100),
              child: Card(
                elevation: 15,
                surfaceTintColor: Color.fromARGB(255, 118, 224, 159),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'LogIn',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(13),
                      child: TextFormField(
                        controller: email_ctrl,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: 'Email',
                            labelText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                        validator: (email) {
                          if (email!.isEmpty || !email.contains('@')) {
                            return "Invalid email";
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(13),
                      child: TextFormField(
                        controller: pass_ctrl,
                        obscureText: true,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.key),
                            hintText: 'Password',
                            labelText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30))),
                        validator: (password) {
                          if (password!.isEmpty || password.length < 6) {
                            return "Invalid password";
                          }
                        },
                      ),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          var valid = formkey.currentState!.validate();
                          if (valid) {
                            login(email_ctrl.text, pass_ctrl.text);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Invalid Credentials')));
                          }
                        },
                        child: Text('Login')),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup_SQF()));
                        },
                        child: Text("Don't Have Account? SignUp!!"))
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
