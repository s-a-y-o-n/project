import 'package:sqflite/sqflite.dart' as sql;

class SQL_functions {
  static Future<sql.Database> opendb() async {
    return sql.openDatabase('UserDB', version: 1,
        onCreate: (sql.Database db, int version) async {
      await createTable(db);
    });
  }

  static Future<void> createTable(sql.Database db) async {
    await db.execute(
        'CREATE TABLE usertable (id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, name TEXT, phone INTEGER, email TEXT, password TEXT)');
  }

  static Future<int> adduser(
      String name, int phone, String email, String pass) async {
    var db = await SQL_functions.opendb();
    var data = {'name': name, 'phone': phone, 'email': email, 'password': pass};
    var id = db.insert('usertable', data);
    return id;
  }

  static Future<List<Map>> checkalreadyIn(String email) async {
    var db = await SQL_functions.opendb();
    final user =
        await db.rawQuery("SELECT * FROM usertable WHERE email='$email'");
    if (user.isNotEmpty) {
      return user;
    } else {
      return user;
    }
  }

  static Future<List<Map>> checkuser(String email, String pass) async {
    var db = await SQL_functions.opendb();
    final data = await db.rawQuery(
        "SELECT * FROM usertable WHERE email='$email' AND password='$pass'");
    if (data.isNotEmpty) {
      return data;
    } else {
      return data;
    }
  }

  static Future<List<Map<String, dynamic>>> fetchdata() async {
    var db = await SQL_functions.opendb();
    final alldata = await db.rawQuery("SELECT *FROM usertable");
    return alldata;
  }

  static Future<void> deleteuser(int id) async {
    var db = await SQL_functions.opendb();
    db.delete('usertable', where: 'id=?', whereArgs: [id]);
  }
}
