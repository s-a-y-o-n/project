import 'package:flutter/material.dart';
import 'package:project/storage/shared_preference/homepage.dart';
import 'package:project/storage/shared_preference/shared_signup.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    home: Shared_login(),
    debugShowCheckedModeBanner: false,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'SIGN IN',
            style: TextStyle(
                color: Color.fromARGB(255, 24, 105, 49),
                fontSize: 24,
                fontWeight: FontWeight.w900),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: uname,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_outlined),
                hintText: 'Email',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: password,
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.password),
                hintText: 'Password',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () async {
                preference = await SharedPreferences.getInstance();
                String username = uname.text;
                String pwd = password.text;
                String? usname = preference.getString("uname");
                String? passwd = preference.getString("pass");
                String name = preference.getString("name")!;
                if (username == usname && pwd == passwd) {
                  preference.setString("name", name);
                  preference.setBool("loggedin", true);

                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (context) => HomePage()));
                }
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                  minimumSize: MaterialStatePropertyAll(Size(350, 50))),
              child: Text(
                'Login',
                style: TextStyle(color: Colors.black, fontSize: 16),
              )),
          TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Shared_Signup()));
            },
            child: RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Dont  have an account?",
                  style: TextStyle(color: Colors.black, fontSize: 15)),
              TextSpan(
                  text: "Sign up.",
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
}
