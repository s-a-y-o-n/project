import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project/storage/hive/hive2/database/hivedb.dart';
import 'package:project/storage/hive/hive2/model/user_model.dart';
import 'package:project/storage/hive/hive2/view/hive_home.dart';
import 'package:project/storage/hive/hive2/view/reg_hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dbDir = await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(dbDir.path);
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
        title: const Text("Login"),
      ),
      body: SafeArea(
          child: Column(
        children: [
          const Text(
            "Login",
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: email_ctrl,
            decoration: const InputDecoration(
              hintText: 'Enter Email',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: pass_ctrl,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Enter Password',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                final registered_users = await Hivedb.instance.getUser();
                validatesignin(registered_users);
                pass_ctrl.text = "";
                email_ctrl.text = "";
              },
              child: const Text('Login')),
          const SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Get.to(Registration_hive());
              },
              child: const Text(
                'Dont have an account?',
                style: TextStyle(color: Colors.black),
              ))
        ],
      )),
    );
  }

  Future<void> validatesignin(List<User> registered_users) async {
    final email = email_ctrl.text.trim();
    final pwd = pass_ctrl.text.trim();

    String? upass;
    bool userfound = false;
    if (email != '' && pwd != '') {
      await Future.forEach(registered_users, (element) {
        if (element.email == email) {
          userfound = true;

          upass = element.password;
        } else {
          userfound = false;
        }
      });
      if (userfound == true) {
        if (upass == pwd) {
          Get.snackbar("Success", "You got in man");
          Get.to(const HiveHome());
        } else {
          Get.snackbar("That's not the password", "Use your brain");
        }
      } else {
        Get.snackbar("Thats not the way", "Go and register first Nigga");
      }
    } else {
      Get.snackbar("Type it!", "Type the credentials to login");
    }
  }
}
