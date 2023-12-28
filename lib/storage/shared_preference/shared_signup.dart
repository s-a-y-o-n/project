import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:project/storage/shared_preference/shared_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Shared_Signup extends StatefulWidget {
  const Shared_Signup({super.key});

  @override
  State<Shared_Signup> createState() => _Shared_SignupState();
}

class _Shared_SignupState extends State<Shared_Signup> {
  final name_ctrl = TextEditingController();
  final uname_ctrl = TextEditingController();
  final pass_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SIGN UP',
            style: TextStyle(
                color: Color.fromARGB(255, 24, 105, 49),
                fontSize: 24,
                fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 22, right: 22, top: 12),
            child: TextField(
              controller: name_ctrl,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                hintText: "Name",
                labelText: "Name",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 22, right: 22, top: 12),
            child: TextField(
              controller: uname_ctrl,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                hintText: "Email",
                labelText: "Email",
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 22, right: 22, top: 12, bottom: 10),
            child: TextField(
              controller: pass_ctrl,
              obscureText: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.key_off),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                hintText: "Password",
                labelText: "Password",
              ),
            ),
          ),
          MaterialButton(
            color: Colors.green,
            shape: StadiumBorder(),
            height: 60,
            minWidth: 300,
            onPressed: () {
              storedata();
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (context) => Shared_login()));
            },
            child: Text('Create Account'),
          ),
          SizedBox(
            height: 20,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Shared_login()));
            },
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Already have an account?",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              TextSpan(
                  text: "Sign in.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 15))
            ])),
          )
        ],
      ),
    );
  }

  void storedata() async {
    final SharedPreferences preference = await SharedPreferences.getInstance();
    String name = name_ctrl.text;
    String uname = uname_ctrl.text;
    String pass = pass_ctrl.text;
    if (uname != "" && pass != "") {
      preference.setString("name", name);
      preference.setString("uname", uname);
      preference.setString("pass", pass);
    }
  }
}
