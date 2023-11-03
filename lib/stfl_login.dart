import 'package:flutter/material.dart';
import 'package:project/home.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login_Stfl(),
  ));
}

// ignore: camel_case_types
class Login_Stfl extends StatefulWidget {
  const Login_Stfl({super.key});

  @override
  State<Login_Stfl> createState() => Login_StflState();
}

// ignore: camel_case_types
class Login_StflState extends State<Login_Stfl> {
  final formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
        backgroundColor: Colors.lightGreen,
      ),
      body: Padding(
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
              validator: (password) {
                if (password!.length < 6 || password.isEmpty) {
                  return 'Password must contain atleast 6 characters';
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  hintText: 'Password', border: OutlineInputBorder()),
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
                      MaterialPageRoute(builder: (context) => const Home()));
                }
              },
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
