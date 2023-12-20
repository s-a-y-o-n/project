import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project/storage/hive/hive2/database/hivedb.dart';
import 'package:project/storage/hive/hive2/model/user_model.dart';
import 'package:project/storage/hive/hive2/view/hive_home.dart';
import 'package:project/storage/hive/hive2/view/reg_hive.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Hive.initFlutter();
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userdata');
  runApp(GetMaterialApp(
    home: Hivelogin(),
    debugShowCheckedModeBanner: false,
  ));
}

class Hivelogin extends StatelessWidget {
  Hivelogin({super.key});
  final email_ctrl = TextEditingController();
  final pass_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Text(
            "Login",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: email_ctrl,
            decoration: InputDecoration(
              hintText: 'Enter Email',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: pass_ctrl,
            obscureText: true,
            decoration: InputDecoration(
              hintText: 'Enter Password',
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                final registered_users = await Hivedb.instance.getUser();
                validatesignin(registered_users);
                pass_ctrl.text = "";
                email_ctrl.text = "";
              },
              child: Text('Login')),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Get.to(Registration_hive());
              },
              child: Text(
                'Dont have an account?',
                style: TextStyle(color: Colors.black),
              ))
        ],
      )),
    );
  }

  void validatesignin(List<User> registered_users) async {
    final email = email_ctrl.text.trim();
    final pwd = pass_ctrl.text.trim();

    if (email != '' && pwd != '') {
      await Future.forEach(registered_users, (element) {
        if (element.email == email) {
          if (element.password == pwd) {
            Get.snackbar("Success", "You got in man");
            Get.to(HiveHome());
          } else {
            Get.snackbar("Not that password", "Use your brain");
          }
        } else {
          Get.snackbar("Thats not the way", "Go and register first Nigga");
        }
      });
    }
  }
}
