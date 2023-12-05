import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
import 'package:project/storage/shared_preference/shared_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Shared_Signup(),
  ));
}

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
      body: Padding(
        padding: const EdgeInsets.only(left: 50, right: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign up',
              style: TextStyle(color: Colors.black),
              // style: GoogleFonts.playfairDisplay(
              //     fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Just a few quick things to get started.',
              // stylaaaae: GoogleFonts.openSans(fontSize: 15),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(left: 22, right: 22, top: 12),
              child: TextField(
                controller: name_ctrl,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
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
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  hintText: "Username",
                  labelText: "Username",
                ),
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(left: 22, right: 22, top: 12, bottom: 10),
              child: TextField(
                controller: pass_ctrl,
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.key_off),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)),
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
                // Navigator.push(context, MaterialPageRoute(builder: (context)=>Log_in()));
              },
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(text: "Already have an account?"),
                TextSpan(
                    text: "Sign in.",
                    style: TextStyle(fontWeight: FontWeight.bold))
              ])),
            )
          ],
        ),
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
