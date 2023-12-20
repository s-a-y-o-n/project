import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:project/storage/hive/hive2/database/hivedb.dart';
import 'package:project/storage/hive/hive2/model/user_model.dart';
import 'package:project/storage/hive/hive2/view/hive_login.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dbDir=await path_provider.getApplicationDocumentsDirectory();
  await Hive.initFlutter(dbDir.path);
  Hive.registerAdapter(UserAdapter());
  await Hive.openBox<User>('userdata');
  runApp(GetMaterialApp(
    home: Registration_hive(),
    debugShowCheckedModeBanner: false,
  ));
}

class Registration_hive extends StatelessWidget {
  Registration_hive({super.key});
  final email_ctrl = TextEditingController();
  final pass_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Text(
            'Register here',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 30,
          ),
          TextField(
            controller: email_ctrl,
            decoration: InputDecoration(hintText: 'Email'),
          ),
          TextField(
            controller: pass_ctrl,
            decoration: InputDecoration(hintText: 'Password'),
            obscureText: true,
          ),
          ElevatedButton(
              onPressed: () async {
                final registered_users = await Hivedb.instance.getUser();
                validatesignup(registered_users);
                email_ctrl.text = "";
                pass_ctrl.text = "";
              },
              child: Text('Login')),
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Get.to(Hivelogin());
              },
              child: Text(
                'Already have an Account! Login',
                style: TextStyle(color: Colors.black),
              ))
        ],
      )),
    );
  }

  void validatesignup(List<User> registered_users) async {
    final email = email_ctrl.text.trim();
    final pwd = pass_ctrl.text.trim();
    bool userfound = false;
    final validateemail = EmailValidator.validate(email);
    if (email != '' && pwd != '') {
      if (validateemail == true) {
        await Future.forEach(registered_users, (element) {
          if (element.email == email) {
            userfound = true;
          } else {
            userfound = false;
          }
        });
        if (userfound == true) {
          Get.snackbar("Error", "User already exist");
        } else {
          final validatePass = checkPass(pwd);
          if (validatePass == true) {
            final newuser = User(email: email, password: pwd);
            await Hivedb.instance.adduser(newuser);
            Get.snackbar("Success", "Registration succeess");
            Get.to(Hivelogin());
          }
        }
      } else {
        Get.snackbar("Error", "Invalid email");
      }
    } else {
      Get.snackbar("Error", "Its blank mann");
    }
  }

  bool checkPass(String pwd) {
    if (pwd.length < 6) {
      Get.snackbar("Error", "Its less than 6 vrooo.");
      return false;
    } else {
      return true;
    }
  }
}
