import 'package:flutter/material.dart';
import 'package:project/storage/shared_preference/shared_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String? username = "";
  late SharedPreferences preference;
  @override
  void initState() {
    fetch_data();
    super.initState();
  }

  void fetch_data() async {
    preference = await SharedPreferences.getInstance();
    setState(() {
      username =
          preference.getString("usename") ?? ""; // Use null-aware operator
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello $username"),
        actions: [
          IconButton(
              onPressed: () async {
                final SharedPreferences preference =
                    await SharedPreferences.getInstance();
                preference.setBool("loggedin", false);
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => Shared_login()));
              },
              icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}
