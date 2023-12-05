import 'package:flutter/material.dart';
import 'package:project/storage/shared_preference/homepage.dart';
import 'package:project/storage/shared_preference/shared_signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Shared_login(),
  ));
}

class Shared_login extends StatefulWidget {
  @override
  State<Shared_login> createState() => _Shared_loginState();
}

class _Shared_loginState extends State<Shared_login> {
  final uname = TextEditingController();
  final password = TextEditingController();
  late SharedPreferences preference;
  late bool loggedin;

  @override
  void initState() {
    check_login();
    super.initState();
  }

  void check_login() async {
    preference = await SharedPreferences.getInstance();
    loggedin = preference.getBool("loggedin") ?? false;
    if (loggedin == true) {
      await Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: uname,
              decoration: InputDecoration(
                  hintText: 'Username', border: OutlineInputBorder()),
            ),
            TextField(
              controller: password,
              decoration: InputDecoration(
                  hintText: 'Password', border: OutlineInputBorder()),
            ),
            ElevatedButton(
                onPressed: () async {
                  preference = await SharedPreferences.getInstance()!;
                  String username = uname.text;
                  String pwd = password.text;
                  String? usname = preference.getString("uname");
                  String? passwd = preference.getString("pass");
                  if (username == usname && pwd == passwd) {
                    preference.setString("usename", username);
                    preference.setBool("loggedin", true);

                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => HomePage()));
                  }
                },
                child: Text('Login')),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Shared_Signup()));
              },
              child: RichText(
                  text: TextSpan(children: [
                TextSpan(text: "Dont  have an account?"),
                TextSpan(
                    text: "Sign up.",
                    style: TextStyle(fontWeight: FontWeight.bold))
              ])),
            )
          ],
        ),
      ),
    );
  }
}
