import 'package:hive/hive.dart';
import 'package:project/storage/hive/hive2/model/user_model.dart';

class Hivedb {
  //singleton class - it only have one object ie also instance
  Hivedb._internal();
  static Hivedb instance = Hivedb._internal();
  factory Hivedb() {
    return instance;
  }

  Future<List<User>> getUser() async {
    final db = await Hive.openBox<User>('userdata');
    return db.values.toList();
  }

  Future<void> adduser(User newuser) async {
    final db = await Hive.openBox<User>('userdata');
    db.put(newuser.id, newuser);
  }
}
