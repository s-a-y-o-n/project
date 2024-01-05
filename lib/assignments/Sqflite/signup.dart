import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/assignments/Sqflite/login.dart';
import 'package:project/assignments/Sqflite/sql_function.dart';

class Signup_SQF extends StatelessWidget {
  var formkey = GlobalKey<FormState>();
  var name_ctrl = TextEditingController();
  var phone_ctrl = TextEditingController();
  var email_ctrl = TextEditingController();
  var pass_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    void registeruser(String name, int phone, String email, String pass) async {
      var id = await SQL_functions.adduser(name, phone, email, pass);
      if (id != null) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login_SQF()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Something went wrong. Cant register!')));
      }
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 146, 146, 146),
      body: Center(
        child: Form(
            key: formkey,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  surfaceTintColor: Color.fromARGB(255, 118, 224, 159),
                  elevation: 15,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(13),
                          child: TextFormField(
                            controller: name_ctrl,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.person),
                                hintText: 'Name',
                                labelText: 'Name',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            validator: (name) {
                              if (name!.isEmpty) {
                                return "Enter Your Name";
                              }
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(13),
                          child: TextFormField(
                            keyboardType: TextInputType.phone,
                            controller: phone_ctrl,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.phone),
                                hintText: 'Mobile No',
                                labelText: 'Mobile No',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30))),
                            validator: (phone) {
                              if (phone!.isEmpty || phone.length != 10) {
                                return "Invalid Phone Number";
                              }
                            },
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
                            obscureText: true,
                            controller: pass_ctrl,
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
                            onPressed: () async {
                              var valid = formkey.currentState!.validate();
                              if (valid) {
                                var users = await SQL_functions.checkalreadyIn(
                                    email_ctrl.text);
                                if (users.isNotEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                          content: Text(
                                              'This email is already registered')));
                                } else {
                                  registeruser(
                                      name_ctrl.text,
                                      int.parse(phone_ctrl.text),
                                      email_ctrl.text,
                                      pass_ctrl.text);
                                }
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text('Invalid Credentials')));
                              }
                            },
                            child: Text('Sign Up')),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login_SQF()));
                            },
                            child: Text("Already Have Account? SignUp!!"))
                      ],
                    ),
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
